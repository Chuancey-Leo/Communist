package org.wingstudio.controller.admin;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.wingstudio.entity.User;
import org.wingstudio.service.UserService;
import org.wingstudio.util.ResponseUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liao on 16-12-23.
 */

@Controller
@RequestMapping("/user/admin/c")
public class UsersController {

    @Resource
    private UserService userService;
    @RequestMapping("/manageUsers")
    public ModelAndView list()throws Exception{
        ModelAndView modelAndView=new ModelAndView();
        Map<String,Object> map=new HashMap<String,Object>();
        List<User> userList=userService.list(map);
        modelAndView.addObject("userList",userList);
        modelAndView.setViewName("user/admin/c/console/manageUsers");
        return modelAndView;
    }

    @RequestMapping("deleteUser")
    public String delete(@RequestParam(value="id")String id,
                         HttpServletResponse response)throws Exception{

        userService.delete(Integer.parseInt(id));
        JSONObject result=new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
        return null;
    }
}
