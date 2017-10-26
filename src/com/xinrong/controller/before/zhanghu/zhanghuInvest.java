package com.xinrong.controller.before.zhanghu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 我的账户-投资管理页
 * @author lenovo
 *
 */
@Controller
public class zhanghuInvest {
	
	@RequestMapping("xin/my/invest.htm")
	public String goIntoMyInvest(){
		return "xin/my/invest";
	}
}
