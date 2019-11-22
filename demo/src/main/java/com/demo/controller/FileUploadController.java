package com.demo.controller;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.aliyun.oss.model.PutObjectRequest;
import com.demo.config.AliyunOssConfig;
import com.demo.util.Result;
import com.demo.util.ResultGenerator;
import com.demo.vo.UploadResultVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.apache.commons.codec.binary.Base64;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Api(value = "文件上传",description = "文件上传",tags="file")
@RestController
public class FileUploadController {
    @Autowired
    AliyunOssConfig aliyunOssConfig;

    @ApiOperation(value = "文件上传", notes = "阿里云oss")
    @PostMapping(value = "/file/upload/{bucket}/{systemName}/{moduleName}", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
    public Result uploadFile(
            @ApiParam(value = "测试传qxkj-test,正式传qxkj-prod") @PathVariable String bucket,
            @ApiParam(value = "系统名称") @PathVariable String systemName,
            @ApiParam(value = "模块名称") @PathVariable String moduleName,
            @RequestPart MultipartFile[] files){
        List<UploadResultVO> result = new ArrayList<>();
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            String domain = aliyunOssConfig.getDomain();
            String endpoint = "https://" + domain;
            String accessKeyId = aliyunOssConfig.getKeyId();
            String accessKeySecret = aliyunOssConfig.getKeySecret();

            // 创建OSSClient实例。
            OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);
            //获取文件后缀
            String originalName = file.getOriginalFilename();
            String stufix = originalName.substring(originalName.lastIndexOf(".")).toLowerCase();

            // 创建PutObjectRequest对象。
            PutObjectRequest putObjectRequest = null;
            try {
                //对象名称
                String objectName = systemName + "/" + moduleName + "/" + UUID.randomUUID().toString() + stufix;
                putObjectRequest = new PutObjectRequest(bucket, objectName, new ByteArrayInputStream(file.getBytes()));
                // 上传字符串。
                ossClient.putObject(putObjectRequest);
                //文件url
                String url = "https://" + bucket + "." + domain + "/" +objectName;
                result.add(new UploadResultVO(i+1,url));
            } catch (IOException e) {
                e.printStackTrace();
                return ResultGenerator.genFailResult("上传失败");
            }finally {
                // 关闭OSSClient。
                ossClient.shutdown();
            }
        }
        return ResultGenerator.genSuccessResult(result);
    }

    @ApiOperation(value = "base64文件上传", notes = "阿里云oss")
    @PostMapping(value = "/file/uploadBase64/{bucket}/{systemName}/{moduleName}")
    public Result uploadBase64File(
            @ApiParam(value = "测试传qxkj-test,正式传qxkj-prod") @PathVariable String bucket,
            @ApiParam(value = "系统名称") @PathVariable String systemName,
            @ApiParam(value = "模块名称") @PathVariable String moduleName,
            @ApiParam(value = "base64流") @RequestParam String files){
            UploadResultVO result = new UploadResultVO();
            String domain = aliyunOssConfig.getDomain();
            String endpoint = "https://" + domain;
            String accessKeyId = aliyunOssConfig.getKeyId();
            String accessKeySecret = aliyunOssConfig.getKeySecret();
            // 创建OSSClient实例。
            OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);
            // 创建PutObjectRequest对象。
            PutObjectRequest putObjectRequest = null;
            String url = "";
            try {
                //截取后缀名,注意:要将编译模式改成Eclipse,否则不能编译通过
                String stufix = files.substring(files.indexOf("/")+1,files.indexOf(";"));
                //对象名称
                String objectName = systemName + "/" + moduleName + "/" + UUID.randomUUID().toString() + "." + stufix;
                byte[] bytes = Base64.decodeBase64(files.substring(files.indexOf(",")+1));
                putObjectRequest = new PutObjectRequest(bucket, objectName, new ByteArrayInputStream(bytes));
                // 上传字符串。
                ossClient.putObject(putObjectRequest);
                //文件url
                url = "https://" + bucket + "." + domain + "/" +objectName;
            } catch (Exception e) {
                e.printStackTrace();
                return ResultGenerator.genFailResult("上传失败");
            }finally {
                // 关闭OSSClient。
                ossClient.shutdown();
            }
           return ResultGenerator.genSuccessResult(new UploadResultVO(1,url));
        }

}
