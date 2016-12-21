package org.wingstudio.controller.admin;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.wingstudio.entity.Admin;
import org.wingstudio.util.CryptographyUtil;

/**
 * Created by liao on 16-12-20.
 */

@Controller
@RequestMapping("/admin/c")
public class AdminLoginController {

    @RequestMapping("/login")
    public String login(Admin admin)throws Exception{
        if (admin.getUserName()!=null&&admin.getPassword()!=null){
            Subject subject= SecurityUtils.getSubject();
            CryptographyUtil cryptographyUtil=new CryptographyUtil();
            UsernamePasswordToken token=new UsernamePasswordToken(admin.getUserName(),
                    cryptographyUtil.md5(admin.getPassword(),"jin"));
            try{
                subject.login(token);
                return "redirect:/admin/c/console/main";
            }catch (Exception e){
                e.printStackTrace();
                return "admin/c/login";
            }
        }else{
            return "admin/c/login";
        }
    }

    @RequestMapping("/console/main")
    public String redirect()throws Exception{
        return "admin/c/console/main";
    }
}
