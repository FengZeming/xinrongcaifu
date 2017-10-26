package com.xinrong.service;

import java.util.List;

import com.xinrong.bean.Depositrecord;

public interface DepositrecordService {
	boolean deleteByPrimaryKey(Integer id);

	boolean insert(Depositrecord record);

	boolean insertSelective(Depositrecord record);

    Depositrecord selectByPrimaryKey(Integer id);

    boolean updateByPrimaryKeySelective(Depositrecord record);

    boolean updateByPrimaryKey(Depositrecord record);
    
    List<Depositrecord> selectAll(Depositrecord depositrecord);
}
