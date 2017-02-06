package org.wingstudio.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by liao on 17-1-2.
 */

@Controller
@RequestMapping("/user/admin/c")
public class ReplyController {

    @RequestMapping("manageReply")
    public String manageReply()throws Exception{
        return "user/admin/c/console/manageReply";
    }
}
