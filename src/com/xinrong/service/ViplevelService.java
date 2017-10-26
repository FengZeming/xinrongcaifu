package com.xinrong.service;

import java.util.List;

import com.xinrong.bean.Viplevel;

public interface ViplevelService {
	boolean deleteByPrimaryKey(Integer vipid);//删除

	boolean insert(Viplevel record);//插入

	boolean insertSelective(Viplevel record);//选择性插入

    Viplevel selectByPrimaryKey(Integer vipid);//根据主键查询

    boolean updateByPrimaryKeySelective(Viplevel record);//选择性更新

    boolean updateByPrimaryKey(Viplevel record);//更新
    
    List<Viplevel> selectAll(Viplevel viplevel);//查询全部
}
