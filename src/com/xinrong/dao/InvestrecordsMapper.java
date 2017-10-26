package com.xinrong.dao;

import java.util.List;

import com.xinrong.bean.Investrecord;

public interface InvestrecordsMapper {     //投资记录
	int deleteByPrimaryKey(Integer id);   //根据id删除投资记录

    int insert(Investrecord record);     //插入所有投资记录

    int insertSelective(Investrecord record);   //选择性插入投资记录

    Investrecord selectByPrimaryKey(Integer id);   //根据id查询投资记录

    int updateByPrimaryKeySelective(Investrecord record);   //选择性更新投资记录

    int updateByPrimaryKey(Investrecord record);    //更新所有投资记录
    
    List<Investrecord> selectAll(Investrecord investrecord);   //查询所有投资记录
}
