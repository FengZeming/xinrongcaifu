package com.xinrong.controller.before.invest;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xinrong.bean.Project;
import com.xinrong.bean.Users;
import com.xinrong.service.ProjectService;
import com.xinrong.service.UsersService;
import com.xinrong.util.Caculator;
import com.xinrong.util.DateTimeUtil;
import com.xinrong.util.ProjectUtil;
/**
 * 投资详情页
 * @author lenovo
 *
 */
@Controller
public class InvestDetail {
	@Autowired
	private ProjectService projectService;
	@Autowired
	private UsersService usersService;
	
	public ProjectService getProjectService() {
		return projectService;
	}

	public void setProjectService(ProjectService projectService) {
		this.projectService = projectService;
	}



	/**
	 * 进入投资详情页
	 */
	@RequestMapping("xin/2.0/detail.shtml.htm")
	public String goIntoInvestDetail(Model model,@RequestParam("projectid")Integer projectid){
		Project project=projectService.selectByPrimaryKey(projectid);
		model.addAttribute("project",project);//项目对象
		Users financingUser=usersService.selectByPrimaryKey(project.getFinancinguserid());
		model.addAttribute("financingUser", financingUser);//用户对象
		
		//对话框内容
		Integer projectfinancingtime=project.getProjectfinancingtime();//融资期限
		Double expectedannualized=project.getExpectedannualized();//预期年化收益率
		Map map=new HashMap();
		map.put("projectfinancingtime", projectfinancingtime);
		map.put("expectedannualized", expectedannualized);
		model.addAttribute("map", map);
		return "xin/2.0/detail";
	}

	/**
	 * 计算投资收益Ajax
	 */
	@RequestMapping("xin/2.0/getProfixAjax")
	@ResponseBody
	public Object getProfixAjax(@RequestParam("money")Double money,@RequestParam("id")Integer id){
		Project project=projectService.selectByPrimaryKey(id);
		Integer projectduration=project.getProjectduration();
		Double expectedannualized=project.getExpectedannualized();//预期年化收益率
		Double profix=Caculator.profitCaculator(projectduration, expectedannualized, money);
		Date endDate=ProjectUtil.getEndDate(project);
		String endDateString=DateTimeUtil.changeFormat(endDate, "yy年MM月dd日");
		List list=new ArrayList();
		list.add(profix);
		list.add(endDateString);
		return list;
	}
	
	/**
	 * 点击立即投资Ajax
	 */
	@RequestMapping("commitInvest")
	@ResponseBody
	public Object commitInvest(HttpSession session,
			@RequestParam("projectid")Integer projectid,@RequestParam("investmoney")Double investmoney,
			@RequestParam("password")String password){
		Integer userid=((Users)session.getAttribute("user")).getId();
		String result=projectService.invest(userid, projectid, investmoney, password);//投资
		return result;
	}
}
