package com.xinrong.controller.before.zhanghu;

import javax.servlet.http.HttpSession;







import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
//		Users user=(Users)session.getAttribute("user");
//		Acounts acounts=accountService.selectByUserId(user.getId());
		Acounts acounts=accountService.selectByUserId(1);//测试用
		Acounts loanAcounts=accountService.selectLoanAcountByUserId(1);
		model.addAttribute("acounts", acounts);//用户资金账户表
		model.addAttribute("loanAcounts", loanAcounts);//信存宝账户
		return "xin/2.0/views/account/account_index";
	}
}
