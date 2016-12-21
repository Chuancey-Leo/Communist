package org.wingstudio.service;

import org.wingstudio.entity.User;

/**
 * Created by liao on 16-12-20.
 */
public interface UserService {
    //通过用户名获取用户信息
    public User getByUserName(String userName);
}
