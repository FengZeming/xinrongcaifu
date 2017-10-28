package com.xinrong.util;

import java.util.Date;

/**
 * 流水号生成器
 * @author lenovo
 *
 */
public class BusinessNoUtil {
	/**
	 * 借款记录表流水号
	 */
	public static String createLoanBusinessNo(Integer userid){
		Date date=new Date();
		String aString=DateTimeUtil.changeFormat(date, "yyMMddhhmmss");
		String idString=String.valueOf(userid);
		if(idString.length()<2){
			idString="0"+idString;
		}
		return idString+aString;
	}
	
	/**
	 * 充值提现记录流水号
	 */
	public static String createDepositeBusinessNo(Integer userid){
		Date date=new Date();
		String aString=DateTimeUtil.changeFormat(date, "yyMMddhhmmss");
		String idString=String.valueOf(userid);
		if(idString.length()<2){
			idString="0"+idString;
		}
		return idString+aString;
	}
}
