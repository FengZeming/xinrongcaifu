package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Message;
import com.xinrong.dao.MessageMapper;
import com.xinrong.service.MessageService;
@Service
public class MessageServiceImpl implements MessageService {
	@Autowired
	private MessageMapper messageMapper;
	
	public MessageMapper getMessageMapper() {
		return messageMapper;
	}

	public void setMessageMapper(MessageMapper messageMapper) {
		this.messageMapper = messageMapper;
	}

	@Override
	//根据id删除信息
	public boolean deleteByPrimaryKey(Integer id) {
		int i=messageMapper.deleteByPrimaryKey(id);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	//插入所有用户信息
	public boolean insert(Message record) {
		int i=messageMapper.insert(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	//选择性插入用户信息
	public boolean insertSelective(Message record) {
		int i=messageMapper.insertSelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	//根据id查询用户信息
	public Message selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return messageMapper.selectByPrimaryKey(id);
	}

	@Override
	 //选择性更新用户信息
	public boolean updateByPrimaryKeySelective(Message record) {
		int i=messageMapper.updateByPrimaryKeySelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	 //更新所有用户信息
	public boolean updateByPrimaryKey(Message record) {
		int i=messageMapper.updateByPrimaryKey(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	//查询所有用户信息
	public List<Message> selectAll(Message message) {
		// TODO Auto-generated method stub
		return null;
	}

}
