package org.wingstudio.controller.admin;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.wingstudio.entity.News;
import org.wingstudio.service.NewsService;
import org.wingstudio.util.ResponseUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liao on 16-12-23.
 */

@Controller
@RequestMapping("/user/admin/c")
public class NewsController {

    @Resource
    private NewsService newsService;

    @RequestMapping("/editNews")
    public String editNews(){
        return "/user/admin/c/console/editNews";
    }

    @RequestMapping("/manageNews")
    public ModelAndView manageNews(){
        ModelAndView modelAndView=new ModelAndView();
        Map<String,Object> map=new HashMap<String,Object>();
        List<News> listNews=newsService.list(map);
        modelAndView.addObject("listNews",listNews);
        modelAndView.setViewName("user/admin/c/console/manageNews");
        return modelAndView;
    }

    @RequestMapping("/saveNews")
    public void saveNews(News news, HttpServletResponse response,
                         HttpServletRequest request)throws Exception{

        newsService.add(news);
        JSONObject result=new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
    }

    @RequestMapping("/deleteNews")
    public void deleteNews(@RequestParam(value = "id")String id,
                           HttpServletResponse response)throws Exception{
        newsService.delete(Integer.parseInt(id));
        JSONObject result=new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
    }

    @RequestMapping("/updateNews/{id}")
    public ModelAndView updateNews(@PathVariable("id") Integer id){
        ModelAndView modelAndView=new ModelAndView();
        newsService.findById(id);
        return modelAndView;
    }
}
