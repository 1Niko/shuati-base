package com.xseven.response;

/**
 * @Author: xseven
 * @DateTime: 2021/1/8  14:52
 * @Description: TODO
 */
public interface CustomizeResultCode {
    /**
    * @Author: xseven
    * @Description: 获取错误码
    * @DateTime: 2021/1/8 14:54
    * @Params: []
    * @Return java.lang.Integer
    */
    Integer getCode();
    /**
    * @Author: xseven
    * @Description: 获取错误信息
    * @DateTime: 2021/1/8 14:55
    * @Params: []
    * @Return java.lang.String
    */
    String getMessage();
}
