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
public class News extends Model<News> {

    private static final long serialVersionUID = 1L;

    /**
     * 案例主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 新闻标题
     */
    private String newsTitle;

    /**
     * 新闻名称
     */
    private String newsName;

    /**
     * 新闻类型：1.行业动态，2.企业动态，3.开发动态
     */
    private Integer newsType;

    /**
     * 新闻内容
     */
    private String newsContent;

    /**
     * 新闻来源处
     */
    private String newsSource;

    /**
     * 发表时间
     */
    private String publicTime;

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
    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }
    public String getNewsName() {
        return newsName;
    }

    public void setNewsName(String newsName) {
        this.newsName = newsName;
    }
    public Integer getNewsType() {
        return newsType;
    }

    public void setNewsType(Integer newsType) {
        this.newsType = newsType;
    }
    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent;
    }
    public String getNewsSource() {
        return newsSource;
    }

    public void setNewsSource(String newsSource) {
        this.newsSource = newsSource;
    }
    public String getPublicTime() {
        return publicTime;
    }

    public void setPublicTime(String publicTime) {
        this.publicTime = publicTime;
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
        return "News{" +
            "id=" + id +
            ", newsTitle=" + newsTitle +
            ", newsName=" + newsName +
            ", newsType=" + newsType +
            ", newsContent=" + newsContent +
            ", newsSource=" + newsSource +
            ", publicTime=" + publicTime +
            ", createTime=" + createTime +
            ", updateTime=" + updateTime +
            ", status=" + status +
        "}";
    }
}
