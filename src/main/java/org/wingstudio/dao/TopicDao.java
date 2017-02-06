package org.wingstudio.dao;

import org.wingstudio.entity.Topic;

import java.util.List;
import java.util.Map;

/**
 * Created by liao on 16-12-20.
 */
public interface TopicDao {
    //所有topic
    public List<Topic> list(Map<String,Object> map);

    //获取总数
    public Long getTotal(Map<String,Object> map);
}
