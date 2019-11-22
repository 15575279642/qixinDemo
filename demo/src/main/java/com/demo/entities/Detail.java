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
 * @since 2019-09-03
 */
public class Detail extends Model<Detail> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String dTitle;

    private String description;

    private String picUrl;

    private String functionList;

    private Integer exampleId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public String getdTitle() {
        return dTitle;
    }

    public void setdTitle(String dTitle) {
        this.dTitle = dTitle;
    }
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }
    public String getFunctionList() {
        return functionList;
    }

    public void setFunctionList(String functionList) {
        this.functionList = functionList;
    }
    public Integer getExampleId() {
        return exampleId;
    }

    public void setExampleId(Integer exampleId) {
        this.exampleId = exampleId;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Detail{" +
            "id=" + id +
            ", dTitle=" + dTitle +
            ", description=" + description +
            ", picUrl=" + picUrl +
            ", functionList=" + functionList +
            ", exampleId=" + exampleId +
        "}";
    }
}
