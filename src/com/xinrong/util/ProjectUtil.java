package com.xinrong.util;

import java.util.Date;

import com.xinrong.bean.Project;

/**
 * 工具类-项目
 * @author lenovo
 *
 */
public class ProjectUtil {
	/**
	 * 项目名称生成方法
	 */
	public static String createProjectName(String seriesname,String end){
		String date=DateTimeUtil.getDateString();
		String name=seriesname+"-"+date+"之";
		Integer endNum=Integer.parseInt(end);
		endNum=endNum+1;
		end=String.valueOf(endNum);
		while(end.length()<4){
			end="0"+end;
		}
		name=name+end;
		return name;
	}
	
	/**
	 * 获取项目到期日期
	 */
	public static Date getEndDate(Project project){
		Date date=project.getStartdatefinancing();//开始融资日期
		Integer projectfinancingtime=project.getProjectfinancingtime();//融资期限
		Integer projectduration=project.getProjectduration();//运行期限
		date=DateTimeUtil.caculateDate(date, projectfinancingtime);
		date=DateTimeUtil.caculateDate(date, projectduration);
		return date;
	}
}
