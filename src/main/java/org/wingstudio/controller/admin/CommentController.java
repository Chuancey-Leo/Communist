package org.wingstudio.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by liao on 17-1-2.
 */

@Controller
@RequestMapping("/user/admin/c")
public class CommentController {

    @RequestMapping("/manageComment")
    public String editNews(){
        return "/user/admin/c/console/manageComment";
    }

}
