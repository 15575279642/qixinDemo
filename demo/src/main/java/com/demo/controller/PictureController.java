package com.demo.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.demo.entities.Picture;
import com.demo.service.PictureService;
import com.demo.util.Result;
import com.demo.util.ResultGenerator;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;


/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author hjj
 * @since 2019-08-27
 */
@RestController
@RequestMapping("/picture")
@Api("轮播图API")
public class PictureController {

    @Autowired
    private PictureService pictureService;

    @PostMapping("/add")
    @ApiOperation("添加轮播图图片")
    @Transactional
    public Result add(@RequestBody Picture picture) {
        pictureService.save(picture);
        return ResultGenerator.genSuccessResult();
    }

    @PostMapping("/delete")
    @ApiOperation("根据id删除轮播图")
    @Transactional
    public  Result delete(@RequestParam int id){
        pictureService.removeById(id);
        return  ResultGenerator.genSuccessResult();
    }

    @PostMapping("/update")
    @ApiOperation("更新轮播图")
    @Transactional
    public Result update(@RequestBody Picture picture){
        pictureService.saveOrUpdate(picture);
        return ResultGenerator.genSuccessResult();
    }

    @PostMapping("/selectByType")
    @ApiOperation("根据轮播图类型查询---1.主页轮播图，2.小程序轮播图，3.APP轮播图，4网站轮播图，5新闻动态轮播图")
    @Transactional
    public  Result selectByType(@RequestParam int type){
        return ResultGenerator.genSuccessResult(pictureService.list(new QueryWrapper<Picture>().eq("pic_type",type)));
    }


}
