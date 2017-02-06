package org.wingstudio.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * 字符串工具类
 * @author 
 *
 */
public class StringUtil {

	/**
	 * 判断是否是空
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str){
		if(str==null||"".equals(str.trim())){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 判断是否不是空
	 * @param str
	 * @return
	 */
	public static boolean isNotEmpty(String str){
		if((str!=null)&&!"".equals(str.trim())){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 *格式化模糊查询
	 * @param str
	 * @return
	 */
	public static String formatLike(String str){
		if(isNotEmpty(str)){
			return "%"+str+"%";
		}else{
			return null;
		}
	}
	
	/**
	 * 过滤掉集合里的空格
	 * @param list
	 * @return
	 */
	public static List<String> filterWhite(List<String> list){
		List<String> resultList=new ArrayList<String>();
		for(String l:list){
			if(isNotEmpty(l)){
				resultList.add(l);
			}
		}
		return resultList;
	}

	/**
	 * 字符串排序
	 * @param content
	 * @return
	 */

	public String sortStr(String content){
		char[] answerArray=content.toCharArray();
		Arrays.sort(answerArray);
		String testContent=new String(answerArray);
		return testContent;
	}


	public static String mergeBlank(String s) {
		int numberBlank = 0;
		String a1;//字符串的第一部分
		String a2;//字符串的第二部分
		for (int index = 0; index < s.length(); index++) {//循环整个字符串，判断是否有连续空格
			numberBlank = getBlankNumber(s, index);
			if (numberBlank >= 2) {//根据连续空格的个数以及当前的位置，截取字符串
				a1 = s.substring(0, index);
				a2 = s.substring(index + numberBlank - 1, s.length());
				s = a1 + a2;//合并字符串
			}
		}
		return s;
	}

	public static int getBlankNumber(String s, int index) {
		if (index < s.length()) {
			if (s.charAt(index) == ' ') {
				return getBlankNumber(s, index + 1) + 1;
			} else {
				return 0;
			}
		} else {
			return 0;
		}
	}



}
