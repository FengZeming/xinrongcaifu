package com.xinrong.controller.before.zhanghu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 我的账户-收支查询-提现记录
 * @author lenovo
 *
 */
@Controller
public class MyOut {
	/**
	 * 进入提现记录页
	 * @return
	 */
	@RequestMapping("xin/my/out.htm")
	public String goIntoMyOut(){
		return "xin/my/out";
	}
}
