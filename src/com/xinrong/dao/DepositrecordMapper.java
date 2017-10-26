package com.xinrong.dao;

import java.util.List;

import com.xinrong.bean.Depositrecord;

public interface DepositrecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Depositrecord record);

    int insertSelective(Depositrecord record);

    Depositrecord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Depositrecord record);

    int updateByPrimaryKey(Depositrecord record);
    
    List<Depositrecord> selectAll(Depositrecord depositrecord);
}