package com.demo.service.impl;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Assert;
import com.demo.dao.ExamplePicDao;
import com.demo.entities.Example;
import com.demo.dao.ExampleDao;
import com.demo.entities.ExamplePic;
import com.demo.exception.ServiceException;
import com.demo.service.ExamplePicService;
import com.demo.service.ExampleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.demo.util.DateUtils;
import com.demo.util.Result;
import com.demo.util.ResultGenerator;
import com.demo.vo.ExampleVo;
import com.demo.vo.ReqVo.ExampleAndPicVo;
import com.demo.vo.ReqVo.ReqExampleAndPicVo;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author dorary
 * @since 2019-08-27
 */
@Service
public class ExampleServiceImpl extends ServiceImpl<ExampleDao, Example> implements ExampleService {
    @Autowired(required = false)
    private ExampleDao exampleDao;
    @Autowired
    private ExamplePicService examplePicService;
    @Autowired
    private  ExampleService exampleService ;
    @Autowired(required = false)
    private ExamplePicDao examplePicDao;
//    public static final  Logger logger= (Logger) LoggerFactory.getLogger("");
    @Override
    public Result getExamples() throws ServiceException {
        Result result = new Result();
        try {
            QueryWrapper<Example> exampleWrapper = new QueryWrapper<>();
            exampleWrapper.eq("status",1);
            result.setData(exampleDao.selectList(exampleWrapper));
            result.setMessage("查询成功");
        } catch (Exception e) {
            e.printStackTrace();
//            logger.error("查询失败",e);
            throw new ServiceException("查询失败",e);
        }
        return result;
    }

    @Override
    public Result addExample(Example example)throws ServiceException  {
        Result result = new Result();
        try {
            Assert.notNull(example,"example信息不能为空");
            example.setCreateTime(DateUtils.strToDate(new Date()));
            example.setUpdateTime(DateUtils.strToDate(new Date()));
            exampleDao.insert(example);
            result.setMessage("插入成功");
        } catch (Exception e) {
            e.printStackTrace();
//            logger.error("插入失败",e);
            throw new ServiceException("插入失败",e);
        }
        return result;
    }

    @Override
    public Result deleteExample(int id) {
        Result result = new Result();
        try {
            exampleDao.deleteById(id);
            QueryWrapper queryWrapper = new QueryWrapper();
            queryWrapper.eq("example_id",id);
            examplePicDao.delete(queryWrapper);
        } catch (Exception e) {
            e.printStackTrace();
//            logger.error("删除失败",e);
            throw new ServiceException("删除失败",e);
        }
        return ResultGenerator.genSuccessResult();
    }

    @Override
    public Result updateExample(ExampleVo examplevo) {
        Result result = new Result();
        try {
            Example example=examplevo.getExample();
            if(example!=null){
                example.setUpdateTime(DateUtils.strToDate(new Date()));
                exampleDao.updateById(example);
            }
            List<ExamplePic> examplePicList = examplevo.getExamplePicList();
            if(examplePicList!=null&&examplePicList.size()>0){
                for(ExamplePic examplePic:examplePicList){
                    examplePicService.updateById(examplePic);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
//            logger.error("修改失败",e);
            throw new ServiceException("修改失败",e);
        }
        return ResultGenerator.genSuccessResult();
    }

    @Override
    public Result getExampleAndPicinfo(){
        Result result =new Result();
        ReqExampleAndPicVo reqExampleAndPicVo = new ReqExampleAndPicVo();
        result=exampleService.getExamples();
        List<Example> exampleList = (List<Example>) result.getData();
        List<ExampleAndPicVo> exampleAndPicVoList=new ArrayList<>();
        ExampleAndPicVo exampleAndPicVo = null;
        try {
            for(Example example:exampleList){
                exampleAndPicVo = new ExampleAndPicVo();
                if(example.getId()!=null){
                    exampleAndPicVo.setExample(example);
                    exampleAndPicVo.setExamplePicList(examplePicService.getExamplePicByid(example.getId()));
                }
                exampleAndPicVoList.add(exampleAndPicVo);
            }
            reqExampleAndPicVo.setExampleAndPicVo(exampleAndPicVoList);
        } catch (Exception e) {
            e.printStackTrace();
            throw  new ServiceException("查询异常",e);
        }
        result = new Result();
        result.setData(reqExampleAndPicVo);
        return  result;
    }

    @Override
    public Result insertExampleAndPicInfo(ExampleVo exampleVo) {
        Example example = exampleVo.getExample();
        example.setStatus(1);
        example.setCreateTime(DateUtils.strToDate(new Date()));
        try {
            exampleService.save(example);
            List<ExamplePic> examplePicList = exampleVo.getExamplePicList();
            if(examplePicList!=null&&examplePicList.size()>0){
                for(ExamplePic examplePic:examplePicList){
                    examplePic.setExampleId(example.getId());
                    examplePicService.save(examplePic);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw  new ServiceException("案例图片信息插入异常",e);
        }
        return ResultGenerator.genSuccessResult();
    }
}
