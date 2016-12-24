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

    @Override
    public User getByUserName(String userName) {
        return userDao.getByUserName(userName);
    }

    @Override
    public Integer updateInfor(User user) {
        return userDao.updateInfor(user);
    }

    @Override
    public List<User> list(Map<String, Object> map) {
        return userDao.list(map);
    }

    @Override
    public Integer delete(Integer id) {
        return userDao.delete(id);
    }
}
