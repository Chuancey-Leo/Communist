package org.wingstudio.service.impl;

import org.springframework.stereotype.Service;
import org.wingstudio.dao.TopicDao;
import org.wingstudio.entity.Topic;
import org.wingstudio.service.TopicService;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by liao on 16-12-20.
 */

@Service("topicService")
public class TopicServiceImpl implements TopicService{
    @Resource
    private TopicDao topicDao;

    public List<Topic> list(Map<String, Object> map) {
        return topicDao.list(map);
    }

    public Long getTotal(Map<String,Object> map) {
        return topicDao.getTotal(map);
    }
}
