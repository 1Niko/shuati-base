package com.xseven.system.controller;

import com.wf.captcha.SpecCaptcha;
import com.xseven.response.Result;
import com.xseven.utils.RedisUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.UUID;

/**
 * @Author: xseven
 * @Since: 2021/1/25  9:46
 */
@Api(value = "验证码", tags = "验证码获取")
@RestController
public class CaptchaController {
    @Autowired
    private RedisUtil redisUtil;
    @ApiOperation("获取验证码")
    @GetMapping("/captcha")
    @ResponseBody
    public Result captcha(HttpServletRequest request, HttpServletResponse response) throws Exception {
        SpecCaptcha specCaptcha = new SpecCaptcha(164, 45, 5);
        String verCode = specCaptcha.text().toLowerCase();
        String key = UUID.randomUUID().toString();
        // 存入redis并设置过期时间为30分钟
        redisUtil.set(key, verCode,  1800);
        // 将key和base64返回给前端
        return Result.ok().data("key", key).data("image", specCaptcha.toBase64());
    }
}
