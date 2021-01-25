package com.xseven.system.service;

import com.xseven.system.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.security.core.userdetails.UserDetails;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author xseven
 * @since 2021-01-07
 */
public interface UserService extends IService<User> {

    UserDetails loadSystemUserByName(String username);
}
