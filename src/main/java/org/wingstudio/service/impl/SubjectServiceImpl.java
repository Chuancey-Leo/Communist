package org.wingstudio.service.impl;

import org.springframework.stereotype.Service;
import org.wingstudio.dao.SubjectDao;
import org.wingstudio.entity.Subject;
import org.wingstudio.service.SubjectService;

import javax.annotation.Resource;

/**
 * Created by liao on 16-12-26.
 */

@Service("subjectService")
public class SubjectServiceImpl implements SubjectService{

    @Resource
    private SubjectDao subjectDao;
    public Integer add(Subject subject) {
        return subjectDao.add(subject);
    }
}
