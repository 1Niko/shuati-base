package com.xseven.handler;

import com.xseven.response.Result;
import com.xseven.response.ResultCode;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * @Author: xseven
 * @DateTime: 2021/1/8  16:30
 * @Description: TODO
 */
@RestControllerAdvice
public class GlobalExceptionHandler {

    /**
     * 全局异常捕获
     * @param e
     * @return
     */
    @ExceptionHandler(Exception.class)
    public Result error(Exception e){
        e.printStackTrace();
        return Result.error();
    }

    /**
     * 自定义异常捕获
     * @param e
     * @return
     */
    @ExceptionHandler(ArithmeticException.class)
    public Result error(ArithmeticException e){
        e.printStackTrace();
        return Result.error().code(ResultCode.ARITHMETICEXCEPTION.getCode())
                .message(ResultCode.ARITHMETICEXCEPTION.getMessage());
    }
    @ExceptionHandler(BusinessException.class)
    public Result error(BusinessException e){
        e.printStackTrace();
        return Result.error().code(e.getCode())
                .message(e.getErrMsg());
    }
}
