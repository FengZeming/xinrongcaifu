package com.xinrong.dao;

import java.util.List;

import com.xinrong.bean.Address;

public interface AddressMapper {
	//根据ID删除
    int deleteByPrimaryKey(Integer id);
    //根据对象插入全部
    int insert(Address record);
     //选择性插入
    int insertSelective(Address record);
     //根据ID查询
    Address selectByPrimaryKey(Integer id);
     //选择性更新
    int updateByPrimaryKeySelective(Address record);
     //全部更新
    int updateByPrimaryKey(Address record);
    //查询全部
    List<Address> selectAll(Address record);
}