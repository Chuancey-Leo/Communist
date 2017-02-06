package org.wingstudio.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.wingstudio.entity.User;
import org.wingstudio.util.CryptographyUtil;

/**
 * Created by liao on 16-12-20.
 */

@Controller
@RequestMapping("/user")
public class LoginController {

    @RequestMapping("/login")
    public String login(User user)throws Exception{
        if (user.getUserName()!=null&&user.getPassword()!=null){
            Subject subject= SecurityUtils.getSubject();
            CryptographyUtil cryptographyUtil=new CryptographyUtil();
            UsernamePasswordToken token=new UsernamePasswordToken(user.getUserName(),
                    cryptographyUtil.md5(user.getPassword(),"jin"));
            try{
                subject.login(token);
                System.out.println(user.getUserName());
                if(user.getUserName().equals("20140244")){

                    return "redirect:/user/admin/c/main";
                }else {

                    return "redirect:/user/main";
                }
            }catch (Exception e){
                e.printStackTrace();
                return "user/login";
            }
        }else{
            return "user/login";
        }
    }

    @RequestMapping("/main")
    public String redirect()throws Exception{
        return "/user/main";
    }

    @RequestMapping("/admin/c/main")
    public String admin()throws Exception{
        return "/user/admin/c/console/main";
    }
}
