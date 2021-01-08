package com.xseven.system.service.impl;

import com.xseven.system.entity.User;
import com.xseven.system.mapper.UserMapper;
import com.xseven.system.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
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

}
