package org.wingstudio.controller;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by liao on 17-1-2.
 */
public class Test {
    public static void main(String[] args) {
        int read = 0;
        int write = 0;
        FileInputStream fis = null;
        InputStreamReader isr = null;
        // 用于包装InputStreamReader,提高处理性能。因为BufferedReader有缓冲的，而InputStreamReader没有。
        BufferedReader br = null;

        try {
            String str = "";
            fis = new FileInputStream("/media/liao/work/j2EE/Communist/doc/test.txt");// FileInputStream
            // 从文件系统中的某个文件中获取字节
            isr = new InputStreamReader(fis);// InputStreamReader 是字节流通向字符流的桥梁,
            br = new BufferedReader(isr);// 从字符输入流中读取文件中的内容,封装了一个new
            // InputStreamReader的对象
            while ((str = br.readLine()) != null) {
                //截取得到的一行数据
                String[] parms = str.split("\t");
                //跳过第一行
                //if(parms[0].equals("No")) continue;
                //把得到的数据放进list
                if (read==0&&parms.equals("")){
                    System.out.println("第一行不能为空！");
                    System.exit(0);
                }
                for (String test:parms) {
                    System.out.println("测试"+read+":"+test);
                }
                List<String> list=trim(parms);
                System.out.println("size:"+list.size());
                for (String test:list) {
                    System.out.println("test:"+test);
                }
                read++;
                //调用添加方法，把list的第1,3,4,7条数据加入到mysql
                //write+=JDBCAdd.Insert(list.get(0),list.get(2),list.get(3),list.get(6));
            }
            //记录下读了/写了多少条数据
            System.out.println("read="+read+"; write="+write);
        } catch (FileNotFoundException e) {
            System.out.println("找不到指定文件");
        } catch (IOException e) {
            System.out.println("读取文件失败");
        } finally {
            try {
                br.close();
                isr.close();
                fis.close();
                // 关闭的时候最好按照先后顺序关闭最后开的先关闭所以先关s,再关n,最后关m
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static List<String> trim(String[] source){
        List<String> list = new ArrayList<String>();
        //循环遍历得到的行文件，加入到list中
        for(String item : source){
            if(null==item||"".equals(item))
                continue;
            list.add(item);
        }
        return list;
    }
}
