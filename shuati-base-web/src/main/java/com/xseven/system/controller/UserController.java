package com.xseven.system.controller;


import com.xseven.handler.BusinessException;
import com.xseven.response.Result;
import com.xseven.response.ResultCode;
import com.xseven.system.entity.User;
import com.xseven.system.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author xseven
 * @since 2021-01-07
 */
@RestController
@RequestMapping("/system/user")
@Api(value = "系统用户模块", tags = "系统用户接口")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/findUsers")
    @ApiOperation(value = "用户列表", notes = "查询所有用户信息")
    public Result findUsers() {
        List<User> list = userService.list();
        return Result.ok().data("users", list);
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "查询单个用户",notes = "通过id查询对应用户信息")
    public Result getUserById(@PathVariable("id") Integer id){
        User user = userService.getById(id);
        if (user != null){
            return Result.ok().data("user",user);
        }else {
            throw new BusinessException(ResultCode.USER_ACCOUNT_NOT_EXIST.getCode(),ResultCode.USER_ACCOUNT_NOT_EXIST.getMessage());
        }

    }
}

