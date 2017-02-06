package org.wingstudio.controller.admin;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.wingstudio.entity.User;
import org.wingstudio.service.UserService;
import org.wingstudio.util.CryptographyUtil;
import org.wingstudio.util.ExcelUtil;
import org.wingstudio.util.ResponseUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Calendar;
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

    @RequestMapping("/deleteUser")
    public String delete(@RequestParam(value="id")String id,
                         HttpServletResponse response)throws Exception{

        userService.delete(Integer.parseInt(id));
        JSONObject result=new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
        return null;
    }

    @RequestMapping("/addUser")
    public String addUser()throws Exception{
        return "user/admin/c/console/addUser";
    }

    @RequestMapping("/saveUser")
    public String saveUser(User user,HttpServletResponse response)
            throws Exception{

        JSONObject result=new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
        return null;
    }

    @RequestMapping("/importUsers")
    public String importUsers()throws Exception{
        return "/user/admin/c/console/importUsers";
    }

    @RequestMapping("/saveUsers")
    public void saveUsers(HttpServletRequest request,
                          HttpServletResponse response,
                          @RequestParam("file")MultipartFile file)
            throws Exception{
        String path = request.getSession().getServletContext().getRealPath("/static/usersFile");
        System.out.println(path);
        String prefix=file.getOriginalFilename().substring(
                file.getOriginalFilename().lastIndexOf("."));
        String name=String.valueOf(Calendar.getInstance().getTimeInMillis());

        String fileName=name+prefix;

        File targetFile=new File(path,fileName);
        file.transferTo(targetFile);


        User user=new User();
        CryptographyUtil cryptographyUtil=new CryptographyUtil();
        ExcelUtil excelUtil=new ExcelUtil();
        List<String> numbers=excelUtil.readFromExcelDemo(targetFile.getAbsolutePath());
        for (String number:numbers) {
            user.setPassword(cryptographyUtil.md5(number,"jin"));
            user.setNumber(Integer.parseInt(number));
            userService.importUsers(user);
        }

        JSONObject result=new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
    }

}
