package com.xinrong.controller.before.zhanghu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 进入我的消息页
 * @author lenovo
 *
 */
@Controller
public class Message {
	@RequestMapping("xin/my/msg.htm")
	public String goIntoMessage(){
		return "xin/my/msg";
	}
}
