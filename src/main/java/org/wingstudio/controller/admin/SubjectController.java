package org.wingstudio.controller.admin;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.wingstudio.entity.Subject;
import org.wingstudio.service.SubjectService;
import org.wingstudio.util.AsposeUtil;
import org.wingstudio.util.ResponseUtil;
import org.wingstudio.util.StringUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Arrays;
import java.util.Calendar;

import static org.wingstudio.util.StringUtil.mergeBlank;

/**
 * Created by liao on 16-12-24.
 */

@Controller
@RequestMapping("/user/admin/c")
public class SubjectController {

    @Resource
    private SubjectService subjectService;
    @RequestMapping("/editSubject")
    public String editSubject()throws Exception{
        return "/user/admin/c/console/editSubject";
    }

    @RequestMapping("saveSubject")
    public String saveSubject(Subject subject,
                              HttpServletResponse response,
                              HttpServletRequest request,
                              @RequestParam("file") MultipartFile file)throws Exception{

        String path = request.getSession().getServletContext().getRealPath("/static/subjectDoc");
        String pathFilePDF = request.getSession().getServletContext().getRealPath("/static/subjectPdf");

        String testFileName = file.getOriginalFilename();
        String prefix=testFileName.substring(testFileName.lastIndexOf(".")+1);
        String name=String.valueOf(Calendar.getInstance().getTimeInMillis());
        String fileName=name+"."+prefix;
        String fileNamePDF=name+".pdf";
        subject.setFileName(fileNamePDF);

        if (prefix.equals("pdf")){
            File targetFile1 = new File(pathFilePDF, fileNamePDF);
            // 保存原文件
            try {
                file.transferTo(targetFile1);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else {
            File targetFile2 = new File(path, fileName);
            // 保存原文件
            try {
                file.transferTo(targetFile2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        StringUtil stringUtil=new StringUtil();
        String answer1=stringUtil.sortStr(subject.getAnswer1());
        subject.setAnswer1(answer1);
        String answer2=stringUtil.sortStr(subject.getAnswer2());
        subject.setAnswer2(answer2);
        String answer3=stringUtil.sortStr(subject.getAnswer3());
        subject.setAnswer3(answer3);
        String answer4=stringUtil.sortStr(subject.getAnswer4());
        subject.setAnswer4(answer4);
        String answer5=stringUtil.sortStr(subject.getAnswer5());
        subject.setAnswer5(answer5);
        String answer6=stringUtil.sortStr(subject.getAnswer6());
        subject.setAnswer6(answer6);
        String answer7=stringUtil.sortStr(subject.getAnswer7());
        subject.setAnswer7(answer7);
        String answer8=stringUtil.sortStr(subject.getAnswer8());
        subject.setAnswer8(answer8);
        String answer9=stringUtil.sortStr(subject.getAnswer9());
        subject.setAnswer9(answer9);
        String answer10=stringUtil.sortStr(subject.getAnswer10());
        subject.setAnswer10(answer10);

        String blank1=stringUtil.mergeBlank(subject.getBlank1());
        subject.setBlank1(blank1);
        String blank2=stringUtil.mergeBlank(subject.getBlank2());
        subject.setBlank2(blank2);
        String blank3=stringUtil.mergeBlank(subject.getBlank3());
        subject.setBlank3(blank3);

        String blank4=stringUtil.mergeBlank(subject.getBlank4());
        subject.setBlank4(blank4);
        String blank5=stringUtil.mergeBlank(subject.getBlank5());
        subject.setBlank5(blank5);
        String blank6=stringUtil.mergeBlank(subject.getBlank6());
        subject.setBlank6(blank6);

        String blank7=stringUtil.mergeBlank(subject.getBlank7());
        subject.setBlank7(blank7);
        String blank8=stringUtil.mergeBlank(subject.getBlank8());
        subject.setBlank8(blank8);
        String blank9=stringUtil.mergeBlank(subject.getBlank9());
        subject.setBlank9(blank9);
        String blank10=stringUtil.mergeBlank(subject.getBlank10());
        subject.setBlank10(blank10);

        subjectService.add(subject);
        if(prefix.equals("doc")||prefix.equals("docx")){
            try{
                AsposeUtil.docToPdf(path+"/"+fileName,
                        pathFilePDF+"/"+name+".pdf");
            }catch (Exception e){
                System.out.println(e);
            }
        }
        JSONObject result=new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
        return null;
    }
}
