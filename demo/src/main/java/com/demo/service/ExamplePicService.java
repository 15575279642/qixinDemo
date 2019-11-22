package com.demo.service;

import com.demo.entities.ExamplePic;
import com.baomidou.mybatisplus.extension.service.IService;
import com.demo.util.Result;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author dorary
 * @since 2019-08-27
 */
public interface ExamplePicService extends IService<ExamplePic> {

    Result getExamplePic();
    Result addExamplePic(ExamplePic examplePic);
    Result deleteExamplePic(ExamplePic examplePic);
    Result updateExamplePic(ExamplePic examplePic);
    List<ExamplePic> getExamplePicByid(Integer example_id);
}
