package com.demo.dao;

import com.demo.entities.Example;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.demo.vo.ReqVo.ExampleAndPicVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author dorary
 * @since 2019-08-27
 */
@Mapper
public interface ExampleDao extends BaseMapper<Example> {


}
