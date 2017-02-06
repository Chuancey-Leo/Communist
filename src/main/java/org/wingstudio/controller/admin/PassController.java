package org.wingstudio.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by liao on 17-1-2.
 */

@Controller
@RequestMapping("/user/admin/c")
public class PassController {

    @RequestMapping("/managePass")
    public String managePass()throws Exception{

        return "user/admin/c/console/managePass";
    }
}
