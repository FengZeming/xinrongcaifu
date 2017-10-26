package com.xinrong.controller.before.zhanghu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 我的账户-账户设置
 * @author lenovo
 *
 */
@Controller
public class AccountSetting {
	/**
	 * 进入账户设置页
	 * @return
	 */
	@RequestMapping("xin/2.0/views/account/account_settings.shtml.htm")
	public String goIntoAccountSetting(){
		return "xin/2.0/views/account/account_settings";
	}
}
