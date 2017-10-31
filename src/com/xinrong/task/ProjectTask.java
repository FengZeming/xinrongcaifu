package com.xinrong.task;

/**
 * 项目任务
 */

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.xinrong.bean.Acounts;
import com.xinrong.bean.Project;
import com.xinrong.dao.AcountsMapper;
import com.xinrong.service.AccountService;
import com.xinrong.service.ProjectService;
import com.xinrong.util.DateTimeUtil;

@Component("myTask")

public class ProjectTask {
	@Autowired
	private ProjectService projectService;
	@Autowired
	private AccountService accountService;
//	/**
//	 * 项目审核任务调度（10天内未审核失效）
//	 */
//	@Scheduled(cron="10,20,30,40,50 * * * * ? ")//每10秒生效一次（测试用）
//	public void job1(){
//		Project project=new Project();
//		project.setProjectprogress(1);
//		List<Project> list=projectService.selectAll(project);
//		for(Project project1:list){
//			Date date=project1.getProjectcreationtime();
//			date=DateTimeUtil.caculateDateByDay(new Date(), 10);//从创建项目到审核项目最多10天时间，10天内未审核就失效
//			if(DateTimeUtil.compare(date, new Date())){
//				project1.setProjectprogress(5);
//				projectService.updateByPrimaryKeySelective(project1);
//			}
//		}
//	}
//	
//	/**
//	 * 项目融资期结束任务调度（融资期结束将自动打款至融资方账户）
//	 */
//	@Scheduled(cron="10,20,30,40,50 * * * * ? ")//每10秒生效一次（测试用）
//	public void job2(){
//		Project project=new Project();
//		project.setProjectprogress(2);
//		List<Project> list=projectService.selectAll(project);
//		for(Project project1:list){
//			
//			//融资期结束将项目状态改为3，同时将账款转至融资方，并生成交易记录
//			Date date=project1.getStartdatefinancing();//开始融资日期
//			Integer monthInteger=project1.getProjectfinancingtime();//融资期限（月）
//			date=DateTimeUtil.caculateDate(date, monthInteger);//结束融资日期
//			if(DateTimeUtil.compare(new Date(), date)){
//				project1.setProjectprogress(3);
//				projectService.updateByPrimaryKeySelective(project1);//更新项目表
//				accountService.transferToFinacinger(project1);//将项目款打给融资方
//			}
//		}
//	}
	
	/**
	 * 项目运行期结束，融资方返款，平台收取利息
	 */
	@Scheduled(cron="10,20,30,40,50 * * * * ? ")//每10秒生效一次（测试用）
	public void job3(){
		Project project=new Project();
		project.setProjectprogress(3);
		List<Project> list=projectService.selectAll(project);
		for(Project project1:list){
			//融资期结束将项目状态改为3，同时将账款转至融资方，并生成交易记录
			Date date=project1.getStartdatefinancing();//开始融资日期
			Integer monthInteger1=project1.getProjectfinancingtime();//融资期限（月）
			Integer monthInteger2=project1.getProjectduration();//项目运行期限（月）
			date=DateTimeUtil.caculateDate(date, monthInteger1+monthInteger2);//项目运行结束日期
			if(DateTimeUtil.compare(new Date(), date)){
				project1.setProjectprogress(4);
				projectService.updateByPrimaryKeySelective(project1);//更新项目表
				accountService.transferToFinacinger(project1);//将项目款打给融资方
			}
		}
	}
}
