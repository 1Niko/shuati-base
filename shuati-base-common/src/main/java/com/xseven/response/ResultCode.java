package com.xseven.response;

/**
 * @Author: xseven
 * @DateTime: 2021/1/8  14:55
 * @Description: TODO
 */
public enum ResultCode implements CustomizeResultCode{
    /**
     * 20000:"成功"
     */
    SUCCESS(20000,"成功"),
    /**
     * 20001:"失败"
     */
    ERROR(20001,"失败"),
    /**
     * 3005:"密码不正确"
     */
    PASS_NOT_CORRECT(3005,"密码不正确！请重新尝试"),
    /**
     * 3006:"尚未登录"
     */
    NOT_LOGIN(3006,"尚未登录!"),
    /**
     * 3007:"用户不存在"
     */
    USER_NOT_FOUND(3007,"用户不存在"),
    /**
     * 2005:"没有这条记录"
     */
    INTRODUCTION_NOT_FOUND(2005,"没有这条记录!"),
    /**
     * 404:"没有找到对应请求路径"
     */
    PAGE_NOT_FOUND(404,"你要请求的页面好像飘走了...要不试试请求其他页面？"),
    /**
     * 500:"服务端异常"
     */
    INTERNAL_SERVER_ERROR(500,"服务器冒烟了...要不等它降降温后再来访问？"),
    /**
     * 2001:"未知异常"
     */
    UNKNOW_SERVER_ERROR(2001,"未知异常，请联系管理员！"),
    /**
     * 2002:"算术异常"
     */
    ARITHMETICEXCEPTION(2002,"算术异常");

    private  Integer code;

    private  String messge;

    ResultCode(Integer code,String messge){
        this.code=code;
        this.messge=messge;
    }

    @Override
    public Integer getCode() {
        return code;
    }

    @Override
    public String getMessage() {
        return messge;
    }
}
