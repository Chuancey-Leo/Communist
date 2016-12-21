package org.wingstudio.service.impl;

import org.springframework.stereotype.Service;
import org.wingstudio.dao.AdminDao;
import org.wingstudio.entity.Admin;
import org.wingstudio.service.AdminService;

import javax.annotation.Resource;

/**
 * Created by liao on 16-12-20.
 */

@Service("adminService")
public class AdminServiceImpl implements AdminService{

    @Resource
    private AdminDao adminDao;
    @Override
    public Admin getByUserName(String userName) {
        return adminDao.getByUserName(userName);
    }
}
