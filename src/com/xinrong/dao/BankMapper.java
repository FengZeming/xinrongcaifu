package com.xinrong.dao;

import java.util.List;

import com.xinrong.bean.Address;
import com.xinrong.bean.Bank;

public interface BankMapper {
	//根据ID删除
    int deleteByPrimaryKey(Integer id);
    //插入所有
    int insert(Bank record);
    //选择性的插入
    int insertSelective(Bank record);
    //根据ID查询
    Bank selectByPrimaryKey(Integer id);
    //选择性的更新
    int updateByPrimaryKeySelective(Bank record);
   //更新所有
    int updateByPrimaryKey(Bank record);
   //选择性的查询
    List<Bank> selectAll(Bank record);
}