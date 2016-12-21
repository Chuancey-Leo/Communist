package org.wingstudio.dao;

import org.wingstudio.entity.User;

/**
 * Created by liao on 16-12-20.
 */
public interface UserDao {
    //通过用户名获取用户信息
    public User getByUserName(String userName);
}
