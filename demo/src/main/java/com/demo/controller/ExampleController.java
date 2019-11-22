package com.demo.controller;



import com.demo.service.ExampleService;
import com.demo.util.Result;
import com.demo.vo.ExampleVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author dorary
 * @since 2019-08-27
 */
@Controller
@RequestMapping("/example")
@Api("案例表")
public class ExampleController {
    @Autowired
    private ExampleService exampleService;

    /**
     * @Author：Dorary
     * @Description:获取案例与案例图片列表
     * @Date: 9:35 2019/8/28
     */
    @PostMapping("/getExampleAndPicinfo")
    @ResponseBody
    @ApiOperation("查询案例与案例图片列表")
    public  Result getExampleAndPicinfo(){
        return exampleService.getExampleAndPicinfo();
    }

    /**
     * @Author：Dorary
     * @Description:添加案例及图片信息
     * @Date: 9:29 2019/9/3
     */
    @PostMapping("/insertExampleAndPicInfo")
    @ResponseBody
    @ApiOperation("插入案例及图片信息")
    public Result insertExampleAndPicInfo(@RequestBody ExampleVo examplevo){
        return exampleService.insertExampleAndPicInfo(examplevo);
    }

    /**
     * @Author：Dorary
     * @Description:获取案例列表
     * @Date: 11:39 2019/8/27
     */
    @PostMapping("/getExamples")
    @ResponseBody
    @ApiOperation("获取案例列表")
    public Result getExamples(){
        return exampleService.getExamples();
    }

    /**
     * @Author：Dorary
     * @Description:添加一个案例
     * @Date: 14:42 2019/8/27
     */
    @PostMapping(value = "/addExample")
    @ResponseBody
    @ApiOperation("添加一个案例")
    public  Result addExample(@RequestBody ExampleVo examplevo){
        return  exampleService.addExample(examplevo.getExample());
    }

    /**
     * @Author：Dorary
     * @Description:删除案例
     * @Date: 15:04 2019/8/27
     */
    @PostMapping(value = "/deleteExample")
    @ResponseBody
    @ApiOperation("删除案例")
    public  Result deleteExample(@RequestParam int id){
        System.out.println("deleteExample");
        return exampleService.deleteExample(id);
    }
    /**
     * @Author：Dorary
     * @Description:修改案例信息
     * @Date: 15:04 2019/8/27
     */
    @PostMapping(value = "/updateExample")
    @ResponseBody
    @ApiOperation("修改案例信息")
    public Result updateExample(@RequestBody ExampleVo examplevo){
        System.out.println("updateExample");
        return exampleService.updateExample(examplevo);
    }


}
