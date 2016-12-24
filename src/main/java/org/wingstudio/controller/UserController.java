package org.wingstudio.controller;

import net.sf.json.JSONObject;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.wingstudio.entity.User;
import org.wingstudio.service.UserService;
import org.wingstudio.util.OperateImage;
import org.wingstudio.util.ResponseUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Calendar;
import java.util.Map;

/**
 * Created by liao on 16-12-22.
 */

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping("/setAvatar")
    public void setAvatar(@RequestParam("file") MultipartFile file, HttpServletRequest request, HttpServletResponse response)throws Exception{

        String data1=request.getParameter("avatar_data");
        JSONObject jsonObject=JSONObject.fromObject(data1);
        Map<String, Object> map =jsonObject;
        Integer x;
        Integer y;
        Integer height;
        Integer width;
        if(String.valueOf(map.get("x")).indexOf(".")!=-1){
            Integer i1=String.valueOf(map.get("x")).indexOf(".");
            x=Integer.parseInt(String.valueOf(map.get("x")).substring(0,i1));
        }else {
            x=Integer.parseInt(String.valueOf(map.get("x")));
        }
        if(String.valueOf(map.get("y")).indexOf(".")!=-1){
            Integer i2=String.valueOf(map.get("y")).indexOf(".");
            y=Integer.parseInt(String.valueOf(map.get("y")).substring(0,i2));
        }else {
            y=Integer.parseInt(String.valueOf(map.get("y")));
        }
        if(String.valueOf(map.get("height")).indexOf(".")!=-1){
            Integer i3=String.valueOf(map.get("height")).indexOf(".");
            height=Integer.parseInt(String.valueOf(map.get("height")).substring(0,i3));
        }else {
            height=Integer.parseInt(String.valueOf(map.get("height")));
        }
        if(String.valueOf(map.get("width")).indexOf(".")!=-1){
            Integer i4=String.valueOf(map.get("width")).indexOf(".");
            width=Integer.parseInt(String.valueOf(map.get("width")).substring(0,i4));
        }else{
            width=Integer.parseInt(String.valueOf(map.get("width")));
        }

        String path = request.getSession().getServletContext().getRealPath("/static/srcAvatar");
        String path2 = request.getSession().getServletContext().getRealPath("/static/avatar");
        String testAvatarName = file.getOriginalFilename();
        String prefix=testAvatarName.substring(testAvatarName.lastIndexOf(".")+1);
        String name=String.valueOf(Calendar.getInstance().getTimeInMillis());
        String avatarName=name+"."+prefix;

        File targetAvatar = new File(path, avatarName);
        // 保存原文件
        try {
            file.transferTo(targetAvatar);
        } catch (Exception e) {
            e.printStackTrace();
        }
        OperateImage operateImage=new OperateImage(path+"/"+avatarName,path2+"/"+avatarName,prefix,x,y,width,height);
        operateImage.cut();
        User user=(User) SecurityUtils.getSubject().getSession().getAttribute("currentUser");
        user.setAvatar(avatarName);
        userService.updateInfor(user);
        JSONObject result=new JSONObject();
        result.put("result", "/Communist/static/avatar/"+avatarName);
        ResponseUtil.write(response, result);
    }
}
