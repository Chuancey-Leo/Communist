package org.wingstudio.service;

import org.wingstudio.entity.Question;

import java.util.List;
import java.util.Map;

/**
 * Created by liao on 17-2-7.
 */
public interface QuestionsService {
    public Integer importQuestions(Map<String,String> map);

    //列出所有question
    public List<Question> list(Map<String,Object> map);

    public Integer delete(Integer id);

    public Question findById(Integer id);

    public Integer update(Question question);
}
