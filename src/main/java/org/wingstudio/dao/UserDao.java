package org.wingstudio.dao;

import org.wingstudio.entity.User;

import java.util.List;
import java.util.Map;

/**
 * Created by liao on 16-12-20.
 */
public interface UserDao {
    //通过用户名获取用户信息
    public User getByUserName(String userName);

    //更新用户信息
    public Integer updateInfor(User user);

    //list所有用户
    public List<User> list(Map<String,Object> map);

    //删除用户
    public Integer delete(Integer id);
}
