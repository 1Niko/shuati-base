package com.xseven.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xseven.handler.BusinessException;
import com.xseven.response.ResultCode;
import com.xseven.system.entity.SystemUser;
import com.xseven.system.entity.User;
import com.xseven.system.mapper.UserMapper;
import com.xseven.system.service.UserService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author xseven
 * @since 2021-01-07
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Override
    public UserDetails loadSystemUserByName(String username) {
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        User user = this.getOne(wrapper.eq("username", username));

        if (user == null) {
            throw new BusinessException(ResultCode.USER_ACCOUNT_NOT_EXIST.getCode(), ResultCode.USER_ACCOUNT_NOT_EXIST.getMessage());
        }

        return new SystemUser(user);
    }
}
