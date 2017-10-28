package com.xinrong.controller.before.zhanghu;

import javax.servlet.http.HttpSession;









import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xinrong.bean.Acounts;
import com.xinrong.bean.Users;
import com.xinrong.service.AccountService;

/**
 * 账户首页 Controller
 * @author lenovo
 *
 */
@Controller
public class zhanghuIndex {
	@Autowired
	private AccountService accountService;
	
	/**
	 * 进入账户首页
	 */
	@RequestMapping("xin/2.0/views/account/account_index.shtml.htm")
	public String goIntoZhanghuIndex(Model model,HttpSession session){
		Users user=(Users)session.getAttribute("user");
		if(user!=null){
			Acounts acounts=accountService.selectByUserId(user.getId());
			Acounts loanAcounts=accountService.selectLoanAcountByUserId(user.getId());
			model.addAttribute("acounts", acounts);//用户资金账户表
			model.addAttribute("loanAcounts", loanAcounts);//信存宝账户
		}
		return "xin/2.0/views/account/account_index";
	}
	
	/**
	 * 提交信存宝的存入
	 */
	@RequestMapping("submitSaveXincunbaoAccount")
	@ResponseBody
	public Object submitSaveXincunbaoAccount(@RequestParam("addmoney")Double addmoney,
			@RequestParam("password")String password,HttpSession session){
		Users users=(Users)session.getAttribute("user");
		Integer userid=users.getId();//获取用户id
		Acounts selectacounts=new Acounts();
		selectacounts.setUserid(userid);
		selectacounts.setPassword(password);
		selectacounts.setType(3);
		Acounts  acounts=accountService.selectOneByObject(selectacounts);
		if(acounts!=null){//判断该账户的用户id和支付密码是否匹配
			return accountService.xincunbaoRecharge(acounts, addmoney);//充值
		}else{
			return "noAcounts";//用户和支付密码不匹配
		}
	}
	
	/**
	 * 信存宝转出Ajax
	 */
	@RequestMapping("submitRolloutXincunbaoAccount")
	@ResponseBody
	public Object submitRolloutXincunbaoAccount(@RequestParam("rolloutmoney")Double rolloutmoney,
			@RequestParam("password")String password,HttpSession session){
		Users users=(Users)session.getAttribute("user");
		Integer userid=users.getId();//获取用户id
		Acounts selectacounts=new Acounts();
		selectacounts.setUserid(userid);
		selectacounts.setPassword(password);
		selectacounts.setType(3);
		Acounts  acounts=accountService.selectOneByObject(selectacounts);
		if(acounts!=null){//判断该账户的用户id和支付密码是否匹配
			return accountService.xincunbaoDeposit(acounts, rolloutmoney);
		}else{
			return "noAcounts";//用户和支付密码不匹配
		}
	}
}
