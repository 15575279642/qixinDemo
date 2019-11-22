package com.demo.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "上传结果")
public class UploadResultVO {
    @ApiModelProperty(notes = "图片索引")
    private int index;
    @ApiModelProperty(notes = "图片全路径")
    private String url;

    public UploadResultVO() {
    }

    public UploadResultVO(int index,String url) {
        this.index = index;
        this.url = url;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
