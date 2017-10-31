package com.xinrong.controller.before.zhanghu;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xinrong.bean.Acounts;
import com.xinrong.bean.Users;
import com.xinrong.service.AccountService;
import com.xinrong.service.UsersService;

 
 
/**
 * 我的账户-充值
 * @author 
 *
 */
@Controller
public class Recharge {
	
	 @Resource
	 private AccountService accountService;
	 @Resource
     private UsersService usersService;
	 
	 
	@RequestMapping("xin/my/recharge.htm")
	public String goToRecharge(Model model,HttpSession session){
//		Users user=new Users();
//		user.setId(1);
//		user.setName("张三");
//		user.setBankid(1);
//		user.setBanknumber("111111111111112345");
//		session.setAttribute("user", user);
		//从session获取用户
	 	Users users=(Users) session.getAttribute("user");
		//获取用户的ID
		Integer userId=users.getId();
		//new一个账户对象
		Acounts acounts=new Acounts();
		//为对象的用户Id属性赋值；
		acounts.setUserid(userId);
		//调用账户的查询账户余额方法
		List<Acounts> list=accountService.selectAll(acounts);
		Acounts acounts1=list.get(0);
		Double yuE=acounts1.getMoney();
		session.setAttribute("yuE", yuE);	
		model.addAttribute("abc", yuE);
		return "xin/my/recharge";
	}
	
	@RequestMapping(value="money.json",method=RequestMethod.POST)
	@ResponseBody
	public Object toAddMonery(@RequestParam String money,HttpSession session){
		
		
		  //从session获取用户
		  Users users=(Users) session.getAttribute("user");
		  //获取用户的ID
		  //users.getId()
		//查询账户的原本
		Acounts acounts=new Acounts();
		acounts.setUserid(users.getId());		
		List<Acounts> list=accountService.selectAll(acounts);
		Acounts acounts1=list.get(0);
		Double yuE=acounts1.getMoney();
		
		//更新账户

		Acounts acounts2=new Acounts();
		Integer acountId=acounts1.getId();
		acounts2.setId(acountId);
		acounts2.setMoney(yuE+Double.parseDouble(money));
		acounts2.setUserid(users.getId());
		boolean falg=accountService.updateByPrimaryKeySelective(acounts2);
		
		return JSON.toJSONString(falg);
		
	}
	
	@RequestMapping("xin/my/true")
	public String toTrue(){
		
		return "xin/my/recharge-true";
	}
	
	
	@RequestMapping("xin/my/false")
	public String toFalse(){
		
		return "xin/my/recharge-false";
	}
	
}
