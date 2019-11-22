package com.demo.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AliyunOssConfig {
    @Value("${aliyunOss.domain}")
    private String domain;
    @Value("${aliyunOss.keyId}")
    private String keyId;
    @Value("${aliyunOss.keySecret}")
    private String keySecret;

    public AliyunOssConfig() {
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public String getKeyId() {
        return keyId;
    }

    public void setKeyId(String keyId) {
        this.keyId = keyId;
    }

    public String getKeySecret() {
        return keySecret;
    }

    public void setKeySecret(String keySecret) {
        this.keySecret = keySecret;
    }
}
