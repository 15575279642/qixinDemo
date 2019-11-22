package com.demo.vo.ReqVo;

import com.demo.entities.Detail;

import java.util.List;

/**
 * @author:Dorary
 * @description:
 * @creattime: 2019/10/29.17:47
 */
public class DetailVo {
    private Integer id;

    private String dTitle;

    private String description;

    private String picUrl;

    private String functionListl;

    private Integer exampleId;

    private List<String> functionList;

    public DetailVo() {
    }

    public DetailVo(Integer id, String dTitle, String description, String picUrl, String functionListl, Integer exampleId, List<String> functionList) {
        this.id = id;
        this.dTitle = dTitle;
        this.description = description;
        this.picUrl = picUrl;
        this.functionListl = functionListl;
        this.exampleId = exampleId;
        this.functionList = functionList;
    }

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

    public String getFunctionListl() {
        return functionListl;
    }

    public void setFunctionListl(String functionListl) {
        this.functionListl = functionListl;
    }

    public Integer getExampleId() {
        return exampleId;
    }

    public void setExampleId(Integer exampleId) {
        this.exampleId = exampleId;
    }

    public List<String> getFunctionList() {
        return functionList;
    }

    public void setFunctionList(List<String> functionList) {
        this.functionList = functionList;
    }
}
