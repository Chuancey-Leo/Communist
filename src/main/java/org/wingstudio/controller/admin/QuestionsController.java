package org.wingstudio.controller.admin;

import net.sf.json.JSONObject;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.wingstudio.entity.Question;
import org.wingstudio.service.QuestionsService;
import org.wingstudio.util.ExcelUtil;
import org.wingstudio.util.ResponseUtil;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liao on 17-2-6.
 */

@Controller
@RequestMapping("/user/admin/c")
public class QuestionsController {

    @Resource
    private QuestionsService questionsService;

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
        List<String> option1=(List<String>) map.get("option1");
        List<String> option2=(List<String>) map.get("option2");
        List<String> option3=(List<String>) map.get("option3");
        List<String> option4=(List<String>) map.get("option4");
        Map<String,String> map1=new HashedMap();
        for (int i = 0; i < questions.size(); i++) {
            int groupId=1;
            map1.put("title",questions.get(i));
            map1.put("key",keys.get(i));
            if(keys.get(i).length()>1){
                groupId=2;
            }
            map1.put("groupId",String.valueOf(groupId));
            map1.put("option1",option1.get(i));
            map1.put("option2",option2.get(i));
            map1.put("option3",option3.get(i));
            map1.put("option4",option4.get(i));
            questionsService.importQuestions(map1);
        }
        JSONObject result=new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
    }

    @RequestMapping("/manageQue/{groupId}")
    public ModelAndView manageQuestions(@PathVariable String groupId)throws Exception{

        ModelAndView modelAndView=new ModelAndView();
        Map<String,Object> map=new HashMap();

        if (groupId.equals("single")){
            map.put("groupId",1);
            List<Question> list=questionsService.list(map);
            modelAndView.addObject("questions",list);
            modelAndView.setViewName("user/admin/c/console/manageQuestions");
        }else if(groupId.equals("multiple")){
            map.put("groupId",2);
            List<Question> list=questionsService.list(map);
            modelAndView.addObject("questions",list);
            modelAndView.setViewName("user/admin/c/console/manageQuestions");
        }
        return modelAndView;
    }

    @RequestMapping("/question/delete")
    public void deleteQuestion(@RequestParam(value = "id")Integer id,
                               HttpServletResponse response)throws Exception{

        questionsService.delete(id);
        JSONObject result=new JSONObject();
        result.put("success",true);
        ResponseUtil.write(response,result);
    }

    @RequestMapping("/question/findById")
    public void findById(@RequestParam(value = "id")Integer id,
                         HttpServletResponse response)throws Exception{
        System.out.println(id);
        Question question=questionsService.findById(id);
        JSONObject result=new JSONObject();
        result.put("success",true);
        result.put("title",question.getTitle());
        result.put("option1",question.getOption1());
        result.put("option2",question.getOption2());
        result.put("option3",question.getOption3());
        result.put("option4",question.getOption4());
        ResponseUtil.write(response,result);
    }

    @RequestMapping("/updateQuestion")
    public void updateQuestion(HttpServletResponse response,
                               Question question)throws Exception{
        //System.out.println(question.getId());
        questionsService.update(question);
        JSONObject result=new JSONObject();
        result.put("success",true);
        ResponseUtil.write(response,result);
    }
}
