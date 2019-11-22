package com.demo.service;

import com.demo.entities.Example;
import com.baomidou.mybatisplus.extension.service.IService;
import com.demo.exception.ServiceException;
import com.demo.util.Result;
import com.demo.vo.ExampleVo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author dorary
 * @since 2019-08-27
 */
public interface ExampleService extends IService<Example> {
    Result getExamples()throws ServiceException;
    Result  addExample(Example example)throws ServiceException;
    Result  deleteExample(int id)throws ServiceException;
    Result  updateExample(ExampleVo examplevo)throws ServiceException;
    Result  getExampleAndPicinfo()throws  ServiceException;
    Result  insertExampleAndPicInfo(ExampleVo exampleVo);
}
