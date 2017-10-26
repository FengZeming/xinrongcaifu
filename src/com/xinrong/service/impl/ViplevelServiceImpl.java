package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Viplevel;
import com.xinrong.dao.ViplevelMapper;
import com.xinrong.service.ViplevelService;
@Service
public class ViplevelServiceImpl implements ViplevelService{
	@Autowired
	private ViplevelMapper viplevelMapper;
	
	
	public ViplevelMapper getViplevelMapper() {
		return viplevelMapper;
	}

	public void setViplevelMapper(ViplevelMapper viplevelMapper) {
		this.viplevelMapper = viplevelMapper;
	}

	/**
	 * 删除
	 */
	public boolean deleteByPrimaryKey(Integer vipid) {
		int num=viplevelMapper.deleteByPrimaryKey(vipid);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 插入
	 */
	public boolean insert(Viplevel record) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 选择性插入
	 */
	public boolean insertSelective(Viplevel record) {
		int num=viplevelMapper.insertSelective(record);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 根据主键查询
	 */
	public Viplevel selectByPrimaryKey(Integer vipid) {
		// TODO Auto-generated method stub
		return viplevelMapper.selectByPrimaryKey(vipid);
	}

	/**
	 * 选择性更新
	 */
	public boolean updateByPrimaryKeySelective(Viplevel record) {
		int num=viplevelMapper.updateByPrimaryKeySelective(record);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 更新
	 */
	public boolean updateByPrimaryKey(Viplevel record) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 查询全部
	 */
	public List<Viplevel> selectAll(Viplevel viplevel) {
		// TODO Auto-generated method stub
		return viplevelMapper.selectAll(viplevel);
	}

}
