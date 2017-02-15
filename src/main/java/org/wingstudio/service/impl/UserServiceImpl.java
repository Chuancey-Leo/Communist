package org.wingstudio.service.impl;

import org.springframework.stereotype.Service;
import org.wingstudio.dao.UserDao;
import org.wingstudio.entity.User;
import org.wingstudio.service.UserService;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by liao on 16-12-20.
 */

@Service("userService")
public class UserServiceImpl implements UserService{
    @Resource
    private UserDao userDao;

    public User getByUserName(String userName) {
        return userDao.getByUserName(userName);
    }

    public Integer updateInfor(User user) {
        return userDao.updateInfor(user);
    }

    public List<User> list(Map<String, Object> map) {
        return userDao.list(map);
    }
    public Integer delete(Integer id) {
        return userDao.delete(id);
    }

    public Integer importUsers(User user) {
        return userDao.importUsers(user);
    }

    public Integer addUser(User user) {
        return userDao.addUser(user);
    }
}
