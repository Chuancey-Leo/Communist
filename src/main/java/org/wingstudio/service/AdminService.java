package org.wingstudio.service;

import org.wingstudio.entity.Admin;

/**
 * Created by liao on 16-12-20.
 */
public interface AdminService {

    public Admin getByUserName(String userName);
}
