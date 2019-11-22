package com.demo.service.impl;

import com.demo.dao.LogoDao;
import com.demo.entities.Logo;
import com.demo.service.LogoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author: wuzhangping
 * @Description:
 * @Date: Created in 16:37 2019/8/27
 * @Modified By:
 */
@Service
public class LogoServiceImpl implements LogoService {
    @Resource
    private LogoDao logoDao;

    public List<Logo> selectImages() {
        return logoDao.selectImages();
    }
}
