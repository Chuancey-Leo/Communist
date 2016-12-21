package org.wingstudio.controller.admin;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.wingstudio.entity.PageBean;
import org.wingstudio.entity.Topic;
import org.wingstudio.service.TopicService;
import org.wingstudio.util.ResponseUtil;
import org.wingstudio.util.StringUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liao on 16-12-20.
 */

@Controller
@RequestMapping("/admin/c")
public class TopicController {

    @Resource
    private TopicService topicService;

    @RequestMapping("/listTopic")
    public String listTopic(@RequestParam(value="page",required=false)String page,
                            @RequestParam(value="rows",required=false)String rows,
                            Topic topic,
                            HttpServletResponse response)throws Exception{
        PageBean pageBean=new PageBean(Integer.parseInt(page),Integer.parseInt(rows));
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("title", StringUtil.formatLike(topic.getTitle()));
        map.put("start", pageBean.getStart());
        map.put("size", pageBean.getPageSize());
        List<Topic> topicList=topicService.list(map);
       Long total=topicService.getTotal(map);
        JSONObject result=new JSONObject();
        JsonConfig jsonConfig=new JsonConfig();
        jsonConfig.registerJsonValueProcessor(java.util.Date.class, new DateJsonValueProcessor("yyyy-MM-dd HH:mm"));
        JSONArray jsonArray=JSONArray.fromObject(topicList,jsonConfig);
        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil.write(response, result);
        return null;
    }
}
