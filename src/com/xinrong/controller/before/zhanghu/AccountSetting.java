package com.xinrong.controller.before.zhanghu;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xinrong.bean.Users;
import com.xinrong.service.UsersService;
/**
 * 我的账户-账户设置
 * @author lenovo
 *
 */
@Controller
public class AccountSetting {
	@Autowired
	private UsersService usersService;
	
	
	public UsersService getUsersService() {
		return usersService;
	}


	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}


	/**
	 * 进入账户设置页
	 * @return
	 */
	@RequestMapping("xin/2.0/views/account/account_settings.shtml.htm")
	public String goIntoAccountSetting(HttpSession session,Model model){
		Users users=(Users) session.getAttribute("user");
		model.addAttribute("users",users);
		return "xin/2.0/views/account/account_settings";
	}

}
