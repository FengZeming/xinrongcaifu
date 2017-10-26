package com.xinrong.controller.before.zhanghu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 我的账户-收支查询-收支明细
 * @author lenovo
 *
 */
@Controller
public class Consume {
	/**
	 * 进入收支明细页
	 * @return
	 */
	@RequestMapping("xin/my/consume.htm")
	public String goIntoConsume(){
		return "xin/my/consume";
	}
}
