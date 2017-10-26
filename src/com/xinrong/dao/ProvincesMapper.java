package com.xinrong.dao;

import java.util.List;

import com.xinrong.bean.Provinces;

public interface ProvincesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Provinces record);

    int insertSelective(Provinces record);

    Provinces selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Provinces record);

    int updateByPrimaryKey(Provinces record);
    
    List<Provinces> selectAll(Provinces provinces);
}