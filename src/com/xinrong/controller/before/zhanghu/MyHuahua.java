package com.xinrong.controller.before.zhanghu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 我的账户-信融花花页面
 * @author lenovo
 *
 */
@Controller
public class MyHuahua {
	 
	/**
	 * 进入我的账户-信融花花页面
	 */
	@RequestMapping("xin/2.0/views/huahua/huahua.html")
	public String goIntoMyHuahua(){
		return "xin/2.0/views/huahua/huahua";
	}
}
