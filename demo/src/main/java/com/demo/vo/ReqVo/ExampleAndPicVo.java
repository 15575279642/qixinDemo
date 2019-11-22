package com.demo.vo.ReqVo;

import com.demo.entities.Example;
import com.demo.entities.ExamplePic;

import java.util.List;

/**
 * @author:Dorary
 * @description:
 * @creattime: 2019/8/28.9:44
 */
public class ExampleAndPicVo {

    private List<ExamplePic> examplePicList;

    private Example example;

    @Override
    public String toString() {
        return "ExampleAndPicVo{" +
                "examplePicList=" + examplePicList +
                ", example=" + example +
                '}';
    }

    public ExampleAndPicVo() {
    }

    public ExampleAndPicVo(List<ExamplePic> examplePicList, Example example) {
        this.examplePicList = examplePicList;
        this.example = example;
    }

    public List<ExamplePic> getExamplePicList() {
        return examplePicList;
    }

    public void setExamplePicList(List<ExamplePic> examplePicList) {
        this.examplePicList = examplePicList;
    }

    public Example getExample() {
        return example;
    }

    public void setExample(Example example) {
        this.example = example;
    }
}
