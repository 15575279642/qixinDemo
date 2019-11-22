package com.demo.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {

    public static String formatDate (Date date){
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return format.format(date);
    }
    /**
     * @Author：Dorary
     * @Description:时间格式为2019/08/29
     * @Date: 16:08 2019/8/29
     */
    public static String strToDate (Date date){
        DateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        return format.format(date);
    }

}
