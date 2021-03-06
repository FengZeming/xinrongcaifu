package com.xinrong.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xinrong.bean.Project;

public interface ProjectMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Project record);

    int insertSelective(Project record);

    Project selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Project record);

    int updateByPrimaryKey(Project record);
    
    List<Project> selectAll(Project record);
    
    //获取当前系列所产生当日项目的最大id
    int selectBiggistBySeiresId(@Param("seriesid")Integer seriesId,@Param("projectcreationtime")Date projectcreationtime);
}