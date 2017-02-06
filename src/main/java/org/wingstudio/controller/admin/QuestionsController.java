package org.wingstudio.controller.admin;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.wingstudio.entity.User;
import org.wingstudio.util.CryptographyUtil;
import org.wingstudio.util.ExcelUtil;
import org.wingstudio.util.ResponseUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

/**
 * Created by liao on 17-2-6.
 */

@Controller
@RequestMapping("/user/admin/c")
public class QuestionsController {

    @RequestMapping("/importQuestions")
    public String importQuestions()throws Exception{
        return "/user/admin/c/console/importQuestions";
    }

    @RequestMapping("/saveQuestions")
    public void saveUsers(HttpServletRequest request,
                          HttpServletResponse response,
                          @RequestParam("file")MultipartFile file)
            throws Exception{
        String path = request.getSession().getServletContext().getRealPath("/static/questionsFile");
        System.out.println(path);
        String prefix=file.getOriginalFilename().substring(
                file.getOriginalFilename().lastIndexOf("."));
        String name=String.valueOf(Calendar.getInstance().getTimeInMillis());

        String fileName=name+prefix;

        File targetFile=new File(path,fileName);
        file.transferTo(targetFile);

        ExcelUtil excelUtil=new ExcelUtil();
        Map map=excelUtil.readQuestionFromExcel(targetFile.getAbsolutePath());
        List<String> questions=(List<String>) map.get("questions");
        List<String> keys=(List<String>) map.get("keys");
        for (String question:questions) {
            System.out.println(question);
        }

        for (String key:keys) {
            System.out.println(key);
        }
        JSONObject result=new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
    }
}
