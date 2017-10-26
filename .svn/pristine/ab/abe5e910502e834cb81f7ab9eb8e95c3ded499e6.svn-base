package com.xinrong.service;

import java.util.List;

import com.xinrong.bean.Message;

public interface MessageService {   //用户信息
	 boolean deleteByPrimaryKey(Integer id);  //根据id删除用户信息
	 
	 boolean insert(Message record);  //插入所有用户信息

	 boolean insertSelective(Message record);   //选择性插入用户信息

	 Message selectByPrimaryKey(Integer id);   //根据id查询用户信息

	 boolean updateByPrimaryKeySelective(Message record);   //选择性更新用户信息

	 boolean updateByPrimaryKey(Message record);     //更新所有用户信息
	    
	 List<Message> selectAll(Message message);   //查询所有用户信息
	    
}
