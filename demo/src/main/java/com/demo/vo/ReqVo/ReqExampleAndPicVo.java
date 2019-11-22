package com.demo.vo.ReqVo;

import java.util.List;

/**
 * @author:Dorary
 * @description:
 * @creattime: 2019/8/28.10:28
 */
public class ReqExampleAndPicVo {
    private List<ExampleAndPicVo> exampleAndPicVo;

    @Override
    public String toString() {
        return "ReqExampleAndPicVo{" +
                "exampleAndPicVo=" + exampleAndPicVo +
                '}';
    }

    public ReqExampleAndPicVo() {
    }

    public ReqExampleAndPicVo(List<ExampleAndPicVo> exampleAndPicVo) {
        this.exampleAndPicVo = exampleAndPicVo;
    }

    public List<ExampleAndPicVo> getExampleAndPicVo() {
        return exampleAndPicVo;
    }

    public void setExampleAndPicVo(List<ExampleAndPicVo> exampleAndPicVo) {
        this.exampleAndPicVo = exampleAndPicVo;
    }
}
