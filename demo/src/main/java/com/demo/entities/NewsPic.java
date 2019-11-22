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
public class NewsPic extends Model<NewsPic> {

    private static final long serialVersionUID = 1L;

    /**
     * 新闻图片主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 新闻图片标题
     */
    private String title;

    /**
     * 新闻图片地址
     */
    private String url;

    /**
     * 新闻的主键
     */
    private Integer newsId;

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
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
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
        return "NewsPic{" +
            "id=" + id +
            ", title=" + title +
            ", url=" + url +
            ", newsId=" + newsId +
            ", status=" + status +
        "}";
    }
}
