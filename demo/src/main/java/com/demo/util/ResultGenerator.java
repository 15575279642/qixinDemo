package com.demo.util;

/**
 * 响应结果生成工具
 *
 * @author jieyingjian
 */
public class ResultGenerator {
    private static final String DEFAULT_SUCCESS_MESSAGE = "SUCCESS";

    public static Result genSuccessResult() {
        return new Result()
                .setCode(ResultCode.SUCCESS)
                .setMessage(DEFAULT_SUCCESS_MESSAGE);
    }

    public static Result genSuccessResult(Object data) {
        return new Result()
                .setCode(ResultCode.SUCCESS)
                .setMessage(DEFAULT_SUCCESS_MESSAGE)
                .setData(data);
    }

    public static Result genFailResult(String message) {
        return new Result()
                .setCode(ResultCode.FAIL)
                .setMessage(message);
    }

    public static Result genFailResult(String message, Object data) {
        return new Result()
                .setCode(ResultCode.FAIL)
                .setMessage(message)
                .setData(data);
    }
    public static Result genFailResult(Object data) {
        return new Result()
                .setCode(ResultCode.FAIL)
                .setData(data);
    }
}