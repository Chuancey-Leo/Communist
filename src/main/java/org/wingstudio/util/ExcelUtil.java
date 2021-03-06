package org.wingstudio.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 * Created by liao on 16-12-30.
 */

public class ExcelUtil {

    /**
     *
     * @Title: getWeebWork
     * @Description: TODO(根据传入的文件名获取工作簿对象(Workbook))
     * @param filename
     * @return
     * @throws IOException
     */
    public static Workbook getWeebWork(String filename) throws IOException {
        Workbook workbook = null;
        if (null != filename) {
            String fileType = filename.substring(filename.lastIndexOf("."),
                    filename.length());
            FileInputStream fileStream = new FileInputStream(new File(filename));
            if (".xls".equals(fileType.trim().toLowerCase())) {
                workbook = new HSSFWorkbook(fileStream);// 创建 Excel 2003 工作簿对象
            } else if (".xlsx".equals(fileType.trim().toLowerCase())) {
                workbook = new XSSFWorkbook(fileStream);// 创建 Excel 2007 工作簿对象
            }
        }
        return workbook;
    }


    public static List<String> readFromExcelDemo(String fileAbsolutePath)
            throws IOException {
        /**
         * 读取Excel表中的所有数据
         */
        Workbook workbook = getWeebWork(fileAbsolutePath);
        System.out.println("总表页数为：" + workbook.getNumberOfSheets());// 获取表页数
        Sheet sheet = workbook.getSheetAt(0);
        List<String> numbers=new ArrayList<String>();
        // Sheet sheet = workbook.getSheetAt(1);
        int rownum = sheet.getLastRowNum();// 获取总行数
        for (int i = 0; i <= rownum; i++) {
            Row row = sheet.getRow(i);
            for (int j = 0; j < row.getLastCellNum(); j++) {
                Cell celldata = row.getCell(j);
                DecimalFormat df = new DecimalFormat("0");
                String number = df.format(celldata.getNumericCellValue());
                numbers.add(String.valueOf(number));
            }
        }
        return numbers;
    }

    public static Map readQuestionFromExcel(String fileAbsolutePath)
            throws IOException {
        /**
         * 读取Excel表中的所有数据
         */
        Workbook workbook = getWeebWork(fileAbsolutePath);
        Sheet sheet = workbook.getSheetAt(0);
        Map<Object,List> map=new HashedMap();
        List<String> questions=new ArrayList<String>();
        List<String> keys=new ArrayList<String>();
        List<String> option1=new ArrayList<String>();
        List<String> option2=new ArrayList<String>();
        List<String> option3=new ArrayList<String>();
        List<String> option4=new ArrayList<String>();
        int rownum = sheet.getLastRowNum();// 获取总行数
        for (int i = 0; i <= rownum; i++) {
            Row row = sheet.getRow(i);
            for (int j = 0; j < row.getLastCellNum(); j++) {
                if (j==0){
                    Cell celldata = row.getCell(j);
                    String question=celldata.getStringCellValue();
                    questions.add(String.valueOf(question));
                }else if(j==1){
                    Cell celldata = row.getCell(j);
                    String key=celldata.getStringCellValue();
                    keys.add(String.valueOf(key));
                }else if(j==2){
                    Cell celldata = row.getCell(j);
                    String key1=celldata.getStringCellValue();
                    option1.add(String.valueOf(key1));
                }else if(j==3){
                    Cell celldata = row.getCell(j);
                    String key2=celldata.getStringCellValue();
                    option2.add(String.valueOf(key2));
                }else if(j==4){
                    Cell celldata = row.getCell(j);
                    String key3=celldata.getStringCellValue();
                    option3.add(String.valueOf(key3));
                }else if(j==5){
                    Cell celldata = row.getCell(j);
                    String key4=celldata.getStringCellValue();
                    option4.add(String.valueOf(key4));
                }
            }
        }
        map.put("questions",questions);
        map.put("keys",keys);
        map.put("option1",option1);
        map.put("option2",option2);
        map.put("option3",option3);
        map.put("option4",option4);
        return map;
    }
}
