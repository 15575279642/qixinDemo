package com.demo.controller;


import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.demo.entities.News;
import com.demo.entities.NewsPic;
import com.demo.exception.ServiceException;
import com.demo.service.NewsPicService;
import com.demo.service.NewsService;
import com.demo.util.DateUtils;
import com.demo.util.ObjectUtils;
import com.demo.util.Result;
import com.demo.util.ResultGenerator;
import com.demo.vo.NewsVO;
import com.demo.vo.XinLangNews;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.util.*;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author jieyingjian
 * @since 2019-08-27
 */
@Controller
@RequestMapping("/news")
@Api("新闻动态表")
@ResponseBody
public class NewsController {
    @Autowired
    private NewsService newsService;
    @Autowired
    private NewsPicService newsPicService;

    @PostMapping("/insert")
    @ApiOperation("新闻表的插入")
    @Transactional
    public Result insert(@RequestBody NewsVO newsVO, MultipartFile file) {
        News news = newsVO.getNews();
        news.setStatus(1);
        news.setCreateTime(DateUtils.formatDate(new Date()));
        boolean save=newsService.save(news);
        List<NewsPic> picList = newsVO.getNewsPicList();
        if(picList!=null&&picList.size()>0){
            for(NewsPic np:picList){
                np.setNewsId(news.getId());
                newsPicService.save(np);
            }
        }
        return ResultGenerator.genSuccessResult();
    }
    @PostMapping("/delete/{id}")
    @ApiOperation("新闻表的删除")
    @Transactional
    public Result delete(@PathVariable int id) {
        News news = newsService.getById(id);
        if(news!=null){
            news.setStatus(0);
            newsService.updateById(news);
        }
        QueryWrapper update_pic = new QueryWrapper();
        update_pic.eq("news_id",id);
        List<NewsPic> list = newsPicService.list(update_pic);
        for(NewsPic np:list){
            np.setStatus(0);
            newsPicService.updateById(np);
        }
        return ResultGenerator.genSuccessResult();
    }

    @PostMapping("/update")
    @ApiOperation("新闻表的修改")
    @Transactional
    public Result update(@RequestBody NewsVO newsVO) {
        News news = newsVO.getNews();
        if(news!=null){
            news.setCreateTime(DateUtils.formatDate(new Date()));
            newsService.updateById(news);
        }else{
            throw new ServiceException("参数为空，修改失败");
        }
        List<NewsPic> picList = newsVO.getNewsPicList();
        if(picList!=null&&picList.size()>0){
            for(NewsPic np:picList){
                newsPicService.updateById(np);
            }
        }
        return ResultGenerator.genSuccessResult();
    }

    @PostMapping("/selectById/{id}")
    @ApiOperation("根据id查询")
    @Transactional
    public Result selectById(@PathVariable int id) throws IllegalAccessException {
        News news = newsService.getById(id);
        Map<String, Object> map = ObjectUtils.objectToMap(news);
        QueryWrapper<NewsPic> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("status","1").eq("news_id",news.getId());
        List<NewsPic> list = newsPicService.list(queryWrapper);
        map.put("pics",list);
        return ResultGenerator.genSuccessResult(map);
    }

    @PostMapping("/selectType")
    @ApiOperation("根据类型查询|1.行业动态，2.企业动态，3.开发动态")
    @Transactional
    public Result selectById(@RequestParam int type,@RequestParam int page,@RequestParam int size ) throws IllegalAccessException {
        QueryWrapper wrapper=new QueryWrapper();
        wrapper.eq("news_type",type);

        IPage page1 = newsService.page(new Page<>(page, size), wrapper);
        List<News> records = page1.getRecords();
        List<Map> maps=new ArrayList<>();
        for(News news:records){
            Map<String, Object> map = ObjectUtils.objectToMap(news);
            QueryWrapper<NewsPic> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("status","1").eq("news_id",news.getId());
            List<NewsPic> list = newsPicService.list(queryWrapper);
            map.put("pics",list);
            maps.add(map);
        }
        page1.setRecords(maps);
        return ResultGenerator.genSuccessResult(page1);
    }

    @PostMapping("/test")
    public Result test(String website) throws IllegalAccessException {
        List<Map> list=null;
        CloseableHttpClient httpClient = HttpClientBuilder.create().build();
        if(website==null){
            website="https://3g.163.com/touch/reconstruct/article/list/BBM54PGAwangning/0-20.html";
        }
        // 创建Get请求
        HttpGet httpGet = new HttpGet(website);

        // 响应模型
        CloseableHttpResponse response = null;
        try {
            // 由客户端执行(发送)Get请求
            response = httpClient.execute(httpGet);
            // 从响应模型中获取响应实体
            HttpEntity responseEntity = response.getEntity();
            System.out.println("响应状态为:" + response.getStatusLine());
            if (responseEntity != null) {
                String str = EntityUtils.toString(responseEntity);
                str=str.replace(")","").replace("artiList(","");
                Map parse = (Map) JSONObject.parse(str);
                list= (List<Map>) parse.get("BBM54PGAwangning");
                List<News> newss=new ArrayList<>();
                for(Map map:list){
                    String  title = (String) map.get("title");
                    String  digest = (String) map.get("digest");
                    String  ptime = (String) map.get("ptime");
                    String  imgsrc = (String) map.get("imgsrc");
                    String  source = (String) map.get("source");
                    String url=(String) map.get("url");
                    News news = new News();
                    news.setCreateTime(DateUtils.formatDate(new Date()));
                    news.setNewsContent(digest);
                    news.setStatus(1);
                    news.setNewsSource(source);
                    news.setNewsTitle(title);
                    news.setNewsName(title);
                    news.setPublicTime(ptime);
                    news.setNewsType(new Random().nextInt(3)+1);
                    newsService.save(news);
                    NewsPic newsPic = new NewsPic();
                    newsPic.setStatus(1);
                    newsPic.setNewsId(news.getId());
                    newsPic.setUrl(imgsrc);
                    newsPic.setTitle(news.getNewsTitle());
                    newsPicService.save(newsPic);
                }
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                // 释放资源
                if (httpClient != null) {
                    httpClient.close();
                }
                if (response != null) {
                    response.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return ResultGenerator.genSuccessResult(website);
    }

}
