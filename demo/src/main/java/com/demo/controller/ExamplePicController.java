package com.demo.controller;


import com.demo.service.ExamplePicService;
import com.demo.util.Result;
import com.demo.vo.ExampleVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author dorary
 * @since 2019-08-27
 */
@Controller
@RequestMapping("/examplePic")
@Api("案例图片表（可以再案例中改）")
public class ExamplePicController {

    @Autowired
    private ExamplePicService examplePicService;


    /**
     * @Author：Dorary
     * @Description:查询案例图片列表
     * @Date: 16:17 2019/8/27
     */
    @PostMapping("/getExamplePic")
   @ResponseBody
    @ApiOperation("查询案例图片列表")
    public Result getExamplePic(){
        return examplePicService.getExamplePic();
    }
    /**
     * @Author：Dorary
     * @Description:添加案例图片
     * @Date: 16:17 2019/8/27
     */
    @PostMapping("/addExamplePic")
    @ResponseBody
    @ApiOperation("添加案例图片")
    public  Result addExamplePic(@RequestBody ExampleVo exampleVo){
        return  examplePicService.addExamplePic(exampleVo.getExamplePic());
    }
    /**
     * @Author：Dorary
     * @Description:删除案例图片
     * @Date: 16:17 2019/8/27
     */
    @PostMapping("/deleteExamplePic")
    @ResponseBody
    @ApiOperation("删除案例图片")
    public  Result deleteExamplePic(@RequestBody ExampleVo exampleVo){
        return  examplePicService.deleteExamplePic(exampleVo.getExamplePic());
    }
    /**
     * @Author：Dorary
     * @Description:修改案例图片
     * @Date: 16:18 2019/8/27
     */
    @PostMapping("/updateExamplePic")
    @ResponseBody
    @ApiOperation("修改案例图片")
    public  Result updateExamplePic(@RequestBody ExampleVo exampleVo){
        return  examplePicService.updateExamplePic(exampleVo.getExamplePic());
    }

}
