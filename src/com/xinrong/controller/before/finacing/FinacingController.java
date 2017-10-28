package com.xinrong.controller.before.finacing;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xinrong.bean.Project;
import com.xinrong.bean.Series;
import com.xinrong.bean.Users;
import com.xinrong.service.ProjectService;
import com.xinrong.service.SeriesService;
/**
 * 融资页
 * @author lenovo
 *
 */
@Controller
public class FinacingController {
	@Autowired
	private SeriesService seriesService;
	@Autowired
	private ProjectService projectService;

	
	/**
	 * 进入融资页
	 */
	@RequestMapping("xin/finacing.html")
	public String goIntoFinacingIndex(){
		return "xin/finacing";
	}
	
	/**
	 * 获取下拉菜单Ajax
	 */
	@RequestMapping("getSeriesListAjax")
	@ResponseBody
	public Object getSeriesListAjax(){
		Series series=new Series();
		List<Series> seriesList=seriesService.selectAll(series);
		return seriesList;
	}
	
	/**
	 * Ajax调用最大最小融资期限方法
	 */
	@RequestMapping("getProjectfinancingtimeAjax")
	@ResponseBody
	public Object getProjectfinancingtimeAjax(@RequestParam("id")Integer id){
		Series series=seriesService.selectByPrimaryKey(id);
		Integer minfinancingtime=series.getMinfinancingtime();
		Integer maxfinancingtime=series.getMaxfinancingtime();
		Integer minduration=series.getMinduration();
		Integer maxduration=series.getMaxduration();
		Double minexpectedamount=series.getMinexpectedamount();
		Double maxexpectedamount=series.getMaxexpectedamount();
		List list=new ArrayList();
		list.add(minfinancingtime);
		list.add(maxfinancingtime);
		list.add(minduration);
		list.add(maxduration);
		list.add(minexpectedamount);
		list.add(maxexpectedamount);
		return list;
	}
	
	/**
	 * 提交项目申请
	 */
	@RequestMapping("xin/commitProject.html")
	public String commitProject(@ModelAttribute("project")Project project,HttpSession session){
		Users user=(Users)session.getAttribute("user");
		Integer id=user.getId();
		project.setFinancinguserid(id);
//		project.setFinancinguserid(1);//测试用，实际上需要改成session中的用户id
		project.setExpectedannualized(project.getExpectedannualized()/100);//将用户输入的数值除以100作为预期收益率
		boolean a=projectService.insertSelective(project);
		if(a){
			return "/xin/finacingSuccess";
		}else{
			return "forward:xin/finacing.html";
		}
	}
	
	
}
