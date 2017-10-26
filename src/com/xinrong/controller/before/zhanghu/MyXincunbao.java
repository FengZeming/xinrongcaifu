package com.xinrong.controller.before.zhanghu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 我的账户-信存宝页面
 * @author lenovo
 *
 */
@Controller
public class MyXincunbao {
	
	/**
	 * 进入我的账户信存宝页面
	 * @return
	 */
	@RequestMapping("xin/2.0/xincunbao.shtml.htm")
	public String goIntoMyXincunbao(){
		return "xin/2.0/xincunbao";
	}
}
