package com.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Assert;
import com.demo.entities.ExamplePic;
import com.demo.dao.ExamplePicDao;
import com.demo.exception.ServiceException;
import com.demo.service.ExamplePicService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.demo.util.Result;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author dorary
 * @since 2019-08-27
 */
@Service
public class ExamplePicServiceImpl extends ServiceImpl<ExamplePicDao, ExamplePic> implements ExamplePicService {
    @Autowired(required = false)
    private ExamplePicDao examplePicDao;

//    public static final  Logger logger= (Logger) LoggerFactory.getLogger("");
    @Override
    public Result getExamplePic() {
        Result result = new Result();
        try {
            QueryWrapper queryWrapper = new QueryWrapper();
            queryWrapper.eq("status",1);
            result.setData(examplePicDao.selectList(queryWrapper));
            result.setMessage("查询成功");
        } catch (Exception e) {
            e.printStackTrace();
//            logger.error("查询失败",e);
            throw  new ServiceException("查询失败",e);
        }
        return result;
    }

    @Override
    public Result addExamplePic(ExamplePic examplePic) {
        Result result = new Result();
        try {
            Assert.notNull(examplePic,"案例图片信息不能为空");
            examplePic.setStatus(1);
            examplePicDao.insert(examplePic);
            result.setMessage("案例图片信息添加成功");
        } catch (Exception e) {
            e.printStackTrace();
//            logger.error("查询失败",e);
            throw  new ServiceException("案例图片信息添加失败",e);
        }
        return result;
    }

    @Override
    public Result deleteExamplePic(ExamplePic examplePic) {
        Result result = new Result();

        try {
            Assert.notNull(examplePic,"案例图片信息不能为空");
            examplePicDao.deleteById(examplePic.getId());
            result.setMessage("删除案例图片信息成功");
        } catch (Exception e) {
            e.printStackTrace();
//            logger.error("查询失败",e);
            throw  new ServiceException("案例图片信息删除失败",e);
        }
        return result;
    }

    @Override
    public Result updateExamplePic(ExamplePic examplePic) {
        Result result = new Result();
        try {
            Assert.notNull(examplePic,"案例图片信息不能为空");
            QueryWrapper<ExamplePic> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("id",examplePic.getId());
            examplePicDao.update(examplePic,queryWrapper);
            result.setMessage("案例图片修改成功");
        } catch (Exception e) {
            e.printStackTrace();
//            logger.error("查询失败",e);
            throw new ServiceException("案例图片修改失败",e);
        }
        return result;
    }

    @Override
    public List<ExamplePic> getExamplePicByid(Integer example_id) {
        try {
            Assert.notNull(example_id,"id为空");
            QueryWrapper<ExamplePic> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("example_id",example_id);
            return  examplePicDao.selectList(queryWrapper);
        } catch (Exception e) {
            e.printStackTrace();
            throw  new ServiceException("查询列表失败",e);
        }
    }
}
