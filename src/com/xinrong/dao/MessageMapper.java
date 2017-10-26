package com.xinrong.dao;

import java.util.List;

import com.xinrong.bean.Message;

public interface MessageMapper {    //用户信息
    int deleteByPrimaryKey(Integer id);  //根据id删除信息

    int insert(Message record);  //插入所有用户信息

    int insertSelective(Message record);   //选择性插入用户信息

    Message selectByPrimaryKey(Integer id);   //根据id查询用户信息

    int updateByPrimaryKeySelective(Message record);   //选择性更新用户信息

    int updateByPrimaryKey(Message record);     //更新所有用户信息
    
    List<Message> selectAll(Message message);   //查询所有用户信息
}