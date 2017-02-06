package org.wingstudio.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by liao on 16-12-20.
 */

@Controller
@RequestMapping("/user/admin/c")
public class TopicController {
    @RequestMapping("manageTopic")
    public String manageTopic()throws Exception{
        return "user/admin/c/console/manageTopic";
    }
}
