package com.demo.controller;

import com.demo.dao.LogoDao;
import com.demo.entities.Logo;
import com.demo.entities.LogoImage;
import com.demo.service.LogoImageService;
import com.demo.service.LogoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author: wuzhangping
 * @Description:
 * @Date: Created in 15:41 2019/8/27
 * @Modified By:
 */
@Controller
@RequestMapping("/logo")
public class LogoImageController {
    @Autowired
    LogoService logoService;

    //查询
    @RequestMapping("/logoList")
    @ResponseBody
    public List<Logo> pageList(){
        List<Logo> logos=logoService.selectImages();
        return logos;
    }
}
