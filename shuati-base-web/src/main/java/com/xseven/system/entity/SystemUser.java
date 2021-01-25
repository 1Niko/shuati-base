package com.xseven.system.entity;

import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Date;

/**
 * @Author: xseven
 * @Since: 2021/1/25  17:47
 */
@NoArgsConstructor
public class SystemUser extends User implements UserDetails {

    public SystemUser(User user) {
        this(user.getId(), user.getUsername(),  user.getPassword(), user.getEnabled(), user.getCreatedDate(), user.getIsDeleted(), user.getModifyDate());
    }

    public SystemUser(Integer id, String username, String password, Integer enabled, Date createdDate, Integer isDeleted, Date modifyDate) {
        super(id, username, password, enabled,isDeleted, createdDate,modifyDate);
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
