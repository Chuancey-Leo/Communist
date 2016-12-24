package org.wingstudio.dao;

import org.wingstudio.entity.News;

import java.util.List;
import java.util.Map;

/**
 * Created by liao on 16-12-23.
 */
public interface NewsDao {
    //添加新闻
    public Integer add(News news);

    //列出所有news
    public List<News> list(Map<String,Object> map);

    //删除新闻
    public Integer delete(Integer id);

    //取出新闻
    public News findById(Integer id);
}
