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
 * @author dorary
 * @since 2019-08-27
 */
public class Example extends Model<Example> {

    private static final long serialVersionUID = 1L;

    /**
     * 案例主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 标题
     */
    private Integer expTitle;

    /**
     * 名字
     */
    private String expName;

    /**
     * 1.小程序案例2.app案例，
1.小程序案例2.app案例，
3.网站案例
     */
    private Integer expType;

    /**
     * 内容
     */
    private String expContent;

    /**
     * 图片表外键
     */
    private String picId;

    /**
     * 创建时间
     */
    private String createTime;

    /**
     * 修改时间
     */
    private String updateTime;

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
    public Integer getExpTitle() {
        return expTitle;
    }

    public void setExpTitle(Integer expTitle) {
        this.expTitle = expTitle;
    }
    public String getExpName() {
        return expName;
    }

    public void setExpName(String expName) {
        this.expName = expName;
    }
    public Integer getExpType() {
        return expType;
    }

    public void setExpType(Integer expType) {
        this.expType = expType;
    }
    public String getExpContent() {
        return expContent;
    }

    public void setExpContent(String expContent) {
        this.expContent = expContent;
    }
    public String getPicId() {
        return picId;
    }

    public void setPicId(String picId) {
        this.picId = picId;
    }
    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
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
        return "Example{" +
            "id=" + id +
            ", expTitle=" + expTitle +
            ", expName=" + expName +
            ", expType=" + expType +
            ", expContent=" + expContent +
            ", picId=" + picId +
            ", createTime=" + createTime +
            ", updateTime=" + updateTime +
            ", status=" + status +
        "}";
    }
}
