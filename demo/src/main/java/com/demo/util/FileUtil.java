package com.demo.util;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.FormBodyPart;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;


public class FileUtil {
    public static String upload(MultipartFile file) {
        String result = null;
        try {
            CloseableHttpClient httpClient = HttpClients.createDefault();
            HttpPost httpPost = new HttpPost("http://qixin.tooo.top:8751/file/receive");//建立HttpPost对象,改成自己的地址
            MultipartEntity multipartEntity = new MultipartEntity();
            String hz = file.getOriginalFilename();
            File temp = File.createTempFile("qixin_" + hz.substring(0, hz.indexOf(".")) + "_", hz.substring(hz.indexOf(".")));
            file.transferTo(temp);
            FileBody fileBody = new FileBody(temp);
            FormBodyPart filePart = new FormBodyPart("file", fileBody);
            multipartEntity.addPart(filePart);
            httpPost.setEntity(multipartEntity);
            HttpResponse response = null;//发送Post,并返回一个HttpResponse对象
            response = httpClient.execute(httpPost);
            if (response.getStatusLine().getStatusCode() == 200) {//如果状态码为200,就是正常返回
                result = EntityUtils.toString(response.getEntity());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }
}
