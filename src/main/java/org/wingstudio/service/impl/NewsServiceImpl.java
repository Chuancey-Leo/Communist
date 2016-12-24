package org.wingstudio.service.impl;

import org.springframework.stereotype.Service;
import org.wingstudio.dao.NewsDao;
import org.wingstudio.entity.News;
import org.wingstudio.service.NewsService;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by liao on 16-12-23.
 */

@Service("newsService")
public class NewsServiceImpl implements NewsService{
    @Resource
    private NewsDao newsDao;
    @Override
    public Integer add(News news) {
        return newsDao.add(news);
    }

    @Override
    public List<News> list(Map<String, Object> map) {
        return newsDao.list(map);
    }

    @Override
    public Integer delete(Integer id) {
        return newsDao.delete(id);
    }

    @Override
    public News findById(Integer id) {
        return newsDao.findById(id);
    }
}
