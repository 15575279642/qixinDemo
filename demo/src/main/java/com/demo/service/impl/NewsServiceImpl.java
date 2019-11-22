package com.demo.service.impl;

import com.demo.entities.News;
import com.demo.dao.NewsDao;
import com.demo.service.NewsService;
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
public class NewsServiceImpl extends ServiceImpl<NewsDao, News> implements NewsService {

}
