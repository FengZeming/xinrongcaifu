package com.xinrong.service;

import java.util.List;

import com.xinrong.bean.Project;
/**
 * 项目Service
 * @author lenovo
 *
 */
public interface ProjectService {
	  boolean deleteByPrimaryKey(Integer id);//根据主键删除项目

	    boolean insert(Project record);//插入所有项目

	    boolean insertSelective(Project record);//选择性插入项目

	    Project selectByPrimaryKey(Integer id);//根据主键查找项目

	    boolean updateByPrimaryKeySelective(Project record);//根据主键选择性修改项目

	    boolean updateByPrimaryKey(Project record);//根据主键修改
	    List<Project> selectAll(Project project);//查询所有项目
	    
	    List<Project> selectBySeriesId(int seriesId);//根据系列id查询项目
}
