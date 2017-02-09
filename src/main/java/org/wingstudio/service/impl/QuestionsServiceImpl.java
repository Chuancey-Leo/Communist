package org.wingstudio.service.impl;

import org.springframework.stereotype.Service;
import org.wingstudio.dao.QuestionsDao;
import org.wingstudio.entity.Question;
import org.wingstudio.service.QuestionsService;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by liao on 17-2-7.
 */

@Service("questionsService")
public class QuestionsServiceImpl implements QuestionsService {
    @Resource
    private QuestionsDao questionsDao;
    public Integer importQuestions(Map<String, String> map) {
        return questionsDao.importQuestions(map);
    }

    public List<Question> list(Map<String, Object> map) {
        return questionsDao.list(map);
    }

    public Integer delete(Integer id) {
        return questionsDao.delete(id);
    }

    public Question findById(Integer id) {
        return questionsDao.findById(id);
    }
}
