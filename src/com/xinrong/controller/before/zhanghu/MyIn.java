package com.xinrong.controller.before.zhanghu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 我的账户-收支查询-充值记录
 * @author lenovo
 *
 */
@Controller
public class MyIn {
	@RequestMapping("xin/my/in.htm")
	public String goIntoMyIn(){
		return "xin/my/in";
	}
}
