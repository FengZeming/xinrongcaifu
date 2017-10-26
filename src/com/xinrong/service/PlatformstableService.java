package com.xinrong.service;

import java.util.List;

import com.xinrong.bean.Platformstable;
//平台数据
public interface PlatformstableService {
	    boolean deleteByPrimaryKey(Integer id);//删除平台数据

	    boolean insert(Platformstable record);////新增平台数据

	    boolean insertSelective(Platformstable record);//条件性新增数据表

	    Platformstable selectByPrimaryKey(Integer id);//根据主键查找平台数据

	    boolean updateByPrimaryKeySelective(Platformstable record);//条件性修改平台数据

	    boolean updateByPrimaryKey(Platformstable record);//根据主键修改平台数据
	    List<Platformstable> selectAll(Platformstable platformstable);//查询所有平台数据


}
