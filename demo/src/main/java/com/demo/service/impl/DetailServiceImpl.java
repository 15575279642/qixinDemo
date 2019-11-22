package com.demo.service.impl;

import com.demo.entities.Detail;
import com.demo.dao.DetailDao;
import com.demo.service.DetailService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author dorary
 * @since 2019-09-03
 */
@Service
public class DetailServiceImpl extends ServiceImpl<DetailDao, Detail> implements DetailService {

}
