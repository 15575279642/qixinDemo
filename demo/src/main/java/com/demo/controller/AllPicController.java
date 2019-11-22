package com.demo.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.demo.entities.AllPic;
import com.demo.service.AllPicService;
import com.demo.util.Result;
import com.demo.util.ResultGenerator;
import com.demo.vo.UploadResultVO;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.transaction.annotation.Transactional;
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
 * @author dorary
 * @since 2019-10-24
 */
@Controller
@ResponseBody
@RequestMapping("/allPic")
public class AllPicController {
    @Autowired
    private AllPicService allPicService;
    @Autowired
    private FileUploadController fileUploadController;
    @ApiOperation("查询")
    @PostMapping("/getAllPic")
    public Result getAllPic(@RequestParam int type){
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("type",type);
        return ResultGenerator.genSuccessResult( allPicService.list(queryWrapper));
    }
    @Transactional
    @ApiOperation("添加")
    @PostMapping(value = "/addAllPic", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
    public Result addAllPic(@RequestParam String type,@RequestParam String alt,@RequestParam String title, @RequestPart MultipartFile[] files){
//    public Result addAllPic(@RequestBody AllPic allPic, @RequestPart MultipartFile[] files){
        if(files.length>1){
            ResultGenerator.genFailResult("只能上传一张图片哦");
        }
        Result result=fileUploadController.uploadFile("qxkj-prod","demo","allpic",files);
        List<UploadResultVO> uploadResultVOList= (List<UploadResultVO>) result.getData();
        AllPic allPic = null;
        int type1=Integer.parseInt(type);
        for (UploadResultVO uploadResultVO : uploadResultVOList){
            allPic= new AllPic();
            allPic.setUrl(uploadResultVO.getUrl());
            allPic.setTitle(title);
            allPic.setAlt(alt);
            allPic.setType(type1);
            allPicService.save(allPic);
        }
        return ResultGenerator.genSuccessResult(allPic);
    }

    @Transactional
    @ApiOperation("修改")
    @PostMapping(value = "/updateAllPic", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
    public  Result updateAllPic(@RequestParam int id,@RequestParam String alt,@RequestParam String title, @RequestPart MultipartFile[] files){
        if(files.length>1){
            ResultGenerator.genFailResult("只能上传一张图片哦");
        }
        Result result=fileUploadController.uploadFile("qxkj-prod","demo","allpic",files);
        List<UploadResultVO> uploadResultVOList= (List<UploadResultVO>) result.getData();
        AllPic allPic = null;
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("id",id);
        for (UploadResultVO uploadResultVO : uploadResultVOList){
            allPic= new AllPic();
            allPic.setUrl(uploadResultVO.getUrl());
            allPic.setTitle(title);
            allPic.setAlt(alt);
            allPicService.update(allPic,queryWrapper);
        }
        return  ResultGenerator.genSuccessResult(allPic);
    }

    @ApiOperation("/删除")
    @PostMapping("/delteAllPic")
    public Result delteAllPic(@RequestParam int id){
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("id",id);
        return ResultGenerator.genSuccessResult( allPicService.remove(queryWrapper));
    }


}


