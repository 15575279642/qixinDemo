package com.demo.vo;

import com.demo.entities.Example;
import com.demo.entities.ExamplePic;

import java.util.List;

/**
 * @author:Dorary
 * @description:
 * @creattime: 2019/8/27.15:36
 */
public class ExampleVo {
    private Example example;
    private ExamplePic examplePic;
    private List<Example> exampleList;
    private List<ExamplePic> examplePicList;

    public List<ExamplePic> getExamplePicList() {
        return examplePicList;
    }

    public void setExamplePicList(List<ExamplePic> examplePicList) {
        this.examplePicList = examplePicList;
    }

    public Example getExample() {
        return example;
    }

    public ExamplePic getExamplePic() {
        return examplePic;
    }

    public void setExamplePic(ExamplePic examplePic) {
        this.examplePic = examplePic;
    }

    public void setExample(Example example) {
        this.example = example;
    }

    public List<Example> getExampleList() {
        return exampleList;
    }

    public void setExampleList(List<Example> exampleList) {
        this.exampleList = exampleList;
    }
}
