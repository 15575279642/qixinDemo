package com.demo.entities;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * @Author: wuzhangping
 * @Description: logo界面图片
 * @Date: Created in 15:02 2019/8/27
 * @Modified By:
 */
@TableName("logo_image")
public class LogoImage {
    @TableId(value = "l_id",type = IdType.AUTO)
    private Integer id;
    @TableField("image")
    private String image;
    @TableField("tilte")
    private String tilte;
    @TableField("logo_id")
    private Integer logoId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTilte() {
        return tilte;
    }

    public void setTilte(String tilte) {
        this.tilte = tilte;
    }

    public Integer getLogoId() {
        return logoId;
    }

    public void setLogoId(Integer logoId) {
        this.logoId = logoId;
    }
    public LogoImage(){}
    public LogoImage(Integer id, String image, String tilte, Integer logoId) {
        this.id = id;
        this.image = image;
        this.tilte = tilte;
        this.logoId = logoId;
    }

    @Override
    public String toString() {
        return "logoImage{" +
                "id=" + id +
                ", image='" + image + '\'' +
                ", tilte='" + tilte + '\'' +
                ", logoId=" + logoId +
                '}';
    }
}
