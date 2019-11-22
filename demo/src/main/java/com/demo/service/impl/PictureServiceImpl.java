package com.demo.service.impl;

import com.demo.entities.Picture;
import com.demo.dao.PictureDao;
import com.demo.service.PictureService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jieyingjian
 * @since 2019-08-27
 */
@Service
public class PictureServiceImpl extends ServiceImpl<PictureDao, Picture> implements PictureService {

}
