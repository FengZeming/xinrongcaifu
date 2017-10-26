package com.xinrong.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 时间日期工具
 * @author lenovo
 *
 */
public class DateTimeUtil {
	
	/**
	 * 获取当前日期字符串
	 */
	public static String getDateString(){
		Date date=new Date();
		SimpleDateFormat format=new SimpleDateFormat("yyMMdd");
		String aString=format.format(date);
		return aString;
	}
	
	/**
	 * 月份增加运算（按30天计算）
	 * 入参date-日期
	 * month-需要增加的月份
	 */
	public static Date caculateDate(Date date,Integer month){
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(date); 
		int days=month*30;
		calendar.set(Calendar.DAY_OF_MONTH,calendar.get(Calendar.DAY_OF_MONTH)+days);
		Date date2=calendar.getTime();
		return date2;
	}
	
	/**
	 * 日期转字符串
	 */
	public static String changeFormat(Date date,String format){
		SimpleDateFormat ft=new SimpleDateFormat(format);
		return ft.format(date);
	}
}
