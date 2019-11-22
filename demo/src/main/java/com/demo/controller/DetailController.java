package com.demo.controller;


import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.demo.entities.Detail;
import com.demo.service.DetailService;
import com.demo.util.FileUtil;
import com.demo.util.Result;
import com.demo.util.ResultGenerator;
import com.demo.vo.ReqVo.DetailVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author jieyingjian
 * @since 2019-09-03
 */
@Controller
@ResponseBody
@RequestMapping("/detail")
@Api(description = "案例详情表")
public class DetailController {
    @Autowired
    DetailService detailService;
    @PostMapping("/selectByExmapleId/{id}")
    @ApiOperation("根据案例id查询详情")
    public Result selectByExmapleId(@PathVariable int id){
        QueryWrapper<Detail> querywrapper=new QueryWrapper<Detail>();
        querywrapper.eq("example_id",id);
        List<Detail> list = detailService.list(querywrapper);
        if(list.size()>1){
            for(int i=1;i<list.size();i++){
                detailService.removeById(list.get(i).getId());
            }
            Detail detail = list.get(0);
            DetailVo detailVo = new DetailVo();
            detailVo.setdTitle(detail.getdTitle());
            detailVo.setDescription(detail.getDescription());
            detailVo.setPicUrl(detail.getPicUrl());
            detailVo.setExampleId(detail.getExampleId());
            detailVo.setId(detail.getId());
          detailVo.setFunctionList(utilaa(detail.getFunctionList()));
            return ResultGenerator.genSuccessResult(detailVo);
        }else if(list.size()==1){
            Detail detail = list.get(0);
            DetailVo detailVo = new DetailVo();
            detailVo.setdTitle(detail.getdTitle());
            detailVo.setDescription(detail.getDescription());
            detailVo.setPicUrl(detail.getPicUrl());
            detailVo.setExampleId(detail.getExampleId());
            detailVo.setId(detail.getId());
            detailVo.setFunctionList(utilaa(detail.getFunctionList()));
            return ResultGenerator.genSuccessResult(detailVo);
        }else {
            return ResultGenerator.genFailResult("数据不存在");
        }
    }

    public static List<String> utilaa(String str){

        List<String>  functionList = new ArrayList<>();
        String[] strlist = str.split("\\|");
        int aa = strlist.length;
        System.out.println(""+aa);
        for(String str1:strlist){
            functionList.add(str1);
        }
        System.out.println(""+functionList);
        return  functionList;
    }

    @PostMapping("/insert")
    @ApiOperation("插入：：FunctionList需要用|隔开")
    public Result insert(@RequestBody Detail detail){
        QueryWrapper<Detail> querywrapper=new QueryWrapper<Detail>();
        querywrapper.eq("example_id",detail.getId());
        List<Detail> list = detailService.list(querywrapper);
        if(list.size()>0){
            return ResultGenerator.genFailResult("该案例详情已经存在，不能插入");
        }
        return ResultGenerator.genSuccessResult(detailService.save(detail));

    }
    @PostMapping("/file")
    @ApiOperation("测试上传")
    public Result file(@RequestParam MultipartFile file){
        return ResultGenerator.genSuccessResult(FileUtil.upload(file));

    }
}

