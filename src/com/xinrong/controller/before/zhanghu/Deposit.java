package com.xinrong.controller.before.zhanghu;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xinrong.bean.Bank;
import com.xinrong.bean.Users;
import com.xinrong.service.BankService;

@Controller
public class Deposit {
	
	 @Resource
	 private BankService bankService;
	 
	 
	
	@RequestMapping("xin/my/deposit.htm")
	public String toDeposit(){
		
		return "xin/my/deposit";
	}
	
	
	@RequestMapping("shengfen.json")
	@ResponseBody
	public Object toShenFen(HttpSession session){
		
		
		Users users=(Users) session.getAttribute("user");
		Integer bankid=users.getBankid();
		String name =users.getName();
		String name1=name.substring(0, 1);
		String banknumber=users.getBanknumber();
		String banknumber1=banknumber.substring(14, 18);
		System.out.println(banknumber1);
		Bank bank=bankService.selectByPrimaryKey(bankid);
		String bankName=bank.getBankname();
		Double yuE=(Double) session.getAttribute("yuE");
		String yuE1=yuE.toString();
		Map<String, String> may=new HashMap<String, String>();
		may.put("bankName", bankName);
		may.put("name1", name1);
		may.put("banknumber1",banknumber1);
		may.put("yuE", yuE1);
		return may;
		
	}
	
	@RequestMapping("shengqingtixian")
	public String tixian(@RequestParam("money")String money){
		System.out.println(money);
		
		return "";
	}
}
