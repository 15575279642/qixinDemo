package com.demo.dao;

import com.demo.entities.Logo;
import com.demo.entities.LogoImage;

import java.util.List;
import java.util.Set;

/**
 * @Author: wuzhangping
 * @Description:
 * @Date: Created in 16:38 2019/8/27
 * @Modified By:
 */

public interface LogoDao{
    public List<Logo> selectImages();
    /*public List<Logo> test();

    public List<LogoImage> test2();*/
}
