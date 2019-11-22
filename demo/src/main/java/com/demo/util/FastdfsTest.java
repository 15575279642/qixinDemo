package com.demo.util;

import org.csource.fastdfs.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

/**
 * @Author: wuzhangping
 * @Description: FastDFS图片上传服务器
 * @Date: Created in 13:08 2019/8/23
 * @Modified By:
 */
public class FastdfsTest {
    // 1img_path 图片地址
    public String testUpload(MultipartFile multipartFile) throws Exception {
        //1、获取当前项目路径
        File directory = new File(".");
        String canonicalPath = directory.getCanonicalPath();
        //2、把FastDFS提供的jar包添加到工程中
        //3、初始化全局配置。加载一个配置文件。
        //ClientGlobal.init("D:\\demo\\fdfsDFS\\src\\main\\resources\\fdfs.conf");
        ClientGlobal.init(canonicalPath + "\\src\\main\\resources\\fdfs.conf");
        //4、创建一个TrackerClient对象。
        TrackerClient trackerClient = new TrackerClient();
        //5、创建一个TrackerServer对象。
        TrackerServer trackerServer = trackerClient.getConnection();
        //6、声明一个StorageServer对象，null。
        StorageServer storageServer = null;
        //7、获得StorageClient对象。
        StorageClient storageClient = new StorageClient(trackerServer, storageServer);
        //8、获取图片后缀名
        String suffix =multipartFile.getOriginalFilename().split("\\.")[1]/*img_path.substring(img_path.lastIndexOf(".") + 1).trim().toLowerCase()*/;
        //9、直接调用StorageClient对象方法上传文件即可。
        String[] result = storageClient.upload_file(multipartFile.getBytes(), suffix, null);
        StringBuilder sb = new StringBuilder("http://47.56.107.186/"); //服务器ip，如：http://192.168.00.00。
        sb.append(result[0]).append("/").append(result[1]);
        System.out.println("图片访问地址: " + sb.toString());
        return sb.toString();
    }


}

