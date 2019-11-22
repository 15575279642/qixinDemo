package com.demo.entities;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.util.List;
import java.util.Set;

/**
 * @Author: wuzhangping
 * @Description: logo界面
 * @Date: Created in 14:56 2019/8/27
 * @Modified By:
 */
@TableName("logo")
public class Logo {
    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;
    @TableField("logo_tilte")
    private String logoTilte;
    @TableField("content")
    private String content;
    @TableField("logo_image")
    private String logoImage;

    private List<LogoImage> logoImages;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLogoTilte() {
        return logoTilte;
    }

    public List<LogoImage> getLogoImages() {
        return logoImages;
    }

    public void setLogoImages(List<LogoImage> logoImages) {
        this.logoImages = logoImages;
    }

    public void setLogoTilte(String logoTilte) {
        this.logoTilte = logoTilte;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getLogoImage() {
        return logoImage;
    }

    public void setLogoImage(String logoImage) {
        this.logoImage = logoImage;
    }

    public Logo(){}

    public Logo(Integer id, String logoTilte, String content, String logoImage, List<LogoImage> logoImages) {
        this.id = id;
        this.logoTilte = logoTilte;
        this.content = content;
        this.logoImage = logoImage;
        this.logoImages = logoImages;
    }
}
