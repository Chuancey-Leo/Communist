package org.wingstudio.dao;

import org.wingstudio.entity.Admin;

/**
 * Created by liao on 16-12-20.
 */
public interface AdminDao {
    public Admin getByUserName(String userName);
}
