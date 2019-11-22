package com.demo.entities;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author jieyingjian
 * @since 2019-08-27
 */
public class Picture extends Model<Picture> {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 标题
     */
    private String picTitle;

    /**
     * 1.主页轮播图，2.小程序轮播图，3.APP轮播图，4网站轮播图，5新闻动态轮播图，6.其他存什么图都行
     */
    private Integer picType;

    /**
     * 图片地址
     */
    private String picUrl;

    /**
     * 创建时间
     */
    private String createTime;

    /**
     * 状态
     */
    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public String getPicTitle() {
        return picTitle;
    }

    public void setPicTitle(String picTitle) {
        this.picTitle = picTitle;
    }
    public Integer getPicType() {
        return picType;
    }

    public void setPicType(Integer picType) {
        this.picType = picType;
    }
    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }
    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Picture{" +
            "id=" + id +
            ", picTitle=" + picTitle +
            ", picType=" + picType +
            ", picUrl=" + picUrl +
            ", createTime=" + createTime +
            ", status=" + status +
        "}";
    }
}
