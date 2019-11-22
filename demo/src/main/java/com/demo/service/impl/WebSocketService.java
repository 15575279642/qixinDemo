package com.demo.service.impl;


import cn.hutool.core.date.DateUtil;
import org.springframework.web.bind.annotation.RestController;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @author:Dorary
 * @description:聊天室服务
 * @creattime: 2019/8/29.15:20
 */
@ServerEndpoint("/websocket/{name}")
@RestController
public class WebSocketService {

    private static ConcurrentHashMap<String,WebSocketService> map = new ConcurrentHashMap<>();
    private Session session;
    private  String name;
    @OnOpen
    public void open(@PathParam("name") String name, Session session){
        map.put(name,this);
        System.out.println(name+"连接服务器成功");
        System.out.println("客户端连接个数:"+getConnetNum());
        this.session=session;
        this.name=name;
    }
    @OnClose
    public void close(){
        map.remove(name);
        System.out.println(name+"断开了服务器连接");
    }
    @OnError
    public void error(Throwable error){
        error.printStackTrace();
        System.out.println(name+"出现了异常");
    }
    @OnMessage
    public void getMessage(String message,Session session) throws IOException {

        System.out.println("收到"+name+":"+message);
        Set<Map.Entry<String, WebSocketService>> entries = map.entrySet();
        sendToUser(message);

    }


   /**
    * @Author：Dorary
    * @Description:给指定用户发送信息
    * @Date: 17:34 2019/8/30
    */
    private void sendToUser(String message) {
        String sendUserno = message.split("[|]")[1];
        String sendMessage = message.split("[|]")[0];
        String now = DateUtil.formatDate(new Date());
        try {
            if (map.get(sendUserno) != null) {
                //map.get(sendUserno).sendMessage(now + "用户" + userno + "发来消息：" + " <br/> " + sendMessage);
                map.get(sendUserno).send(now+"用户"+name+"发来的消息:"+ " <br/> " + sendMessage);
                //  map.get(sendUserno).sendToUser(now+"用户"+userid+"发来的消息:"+ " <br/> " + sendMessage);
            } else {
                System.out.println("当前用户不在线");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public void send(String message) throws IOException {
        if(session.isOpen()){
            session.getBasicRemote().sendText(message);
        }
    }

    public int  getConnetNum(){
        return map.size();
    }

}
