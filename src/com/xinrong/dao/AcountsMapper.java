package com.xinrong.dao;

import java.util.List;

import com.xinrong.bean.Acounts;

public interface AcountsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Acounts record);

    int insertSelective(Acounts record);

    Acounts selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Acounts record);

    int updateByPrimaryKey(Acounts record);
    
    List<Acounts> selectAll(Acounts acounts);
    
    Acounts selectOneByObject(Acounts acounts);//根据条件获取单个对象
}