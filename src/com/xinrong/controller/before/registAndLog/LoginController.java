package com.xinrong.controller.before.registAndLog;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;






import com.alibaba.fastjson.JSON;
import com.xinrong.bean.Users;
import com.xinrong.service.UsersService;

@Controller
public class LoginController {
	
	@Autowired
	private UsersService usersService;

	public UsersService getUsersService() {
		return usersService;
	}

	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}
	/**
	 * 首页登陆
	 * @param username
	 * @param password
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public Object login(@RequestParam("username")String username,@RequestParam("password")String password,HttpSession session){
		boolean falg=true;
		Users users=new Users();
		users.setUsername(username);
		users.setPassword(password);
		falg=usersService.login(username, password);
		if (!falg) {
			return JSON.toJSONString(falg);
		}
		Users users1=usersService.getLoginUser(username);
			session.setAttribute("user1", users1);
			System.out.println(falg);
			return JSON.toJSONString(falg);

	}
	
}