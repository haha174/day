package com.yuan.boot.util;


import java.util.Date;
import java.util.Random;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
/**
 * 随机数工具类
 */
public class RandomUtil {

	//默认生成4位随机数
	private static final Integer DEFAULT_NUM = 4;

	private static final String randStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	
	public static String getRandom(int num) {
		Random random = new Random();
		int nextInt = 0;
		StringBuilder result = new StringBuilder();
		for(int i = 0;i < num; i++){
			nextInt = random.nextInt(randStr.length());
			result.append(randStr.charAt(nextInt));
		}
		return result.toString();
	}

	public static String getRandom() {
		return getRandom(DEFAULT_NUM);
	}
	public String getDayString() throws ParseException{
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		String time=format.format(date);
		return time;
	}
	public String getTimeString() throws ParseException{
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("HHmmss");
		String time=format.format(date);
		return time;
	}
}
