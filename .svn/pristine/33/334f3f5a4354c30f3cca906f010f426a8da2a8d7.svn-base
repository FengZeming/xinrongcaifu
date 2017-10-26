package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Provinces;
import com.xinrong.dao.ProvincesMapper;
import com.xinrong.service.ProvincesService;
/**
 * 省impl
 * @author lenovo
 *
 */
@Service
public class ProvincesServiceImpl implements ProvincesService{
	@Autowired
	private ProvincesMapper provincesMapper;
	
	public ProvincesMapper getProvincesMapper() {
		return provincesMapper;
	}

	public void setProvincesMapper(ProvincesMapper provincesMapper) {
		this.provincesMapper = provincesMapper;
	}

	/**
	 * 删除
	 */
	public boolean deleteByPrimaryKey(Integer id) {
		int num=provincesMapper.deleteByPrimaryKey(id);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 插入
	 */
	public boolean insert(Provinces record) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 选择性插入
	 */
	public boolean insertSelective(Provinces record) {
		int num=provincesMapper.insertSelective(record);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 根据主键查询
	 */
	public Provinces selectByPrimaryKey(Integer id) {
		return provincesMapper.selectByPrimaryKey(id);
	}

	/**
	 * 选择性更新 
	 */
	public boolean updateByPrimaryKeySelective(Provinces record) {
		int num=provincesMapper.updateByPrimaryKeySelective(record);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 更新
	 */
	public boolean updateByPrimaryKey(Provinces record) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 查询全部
	 */
	public List<Provinces> selectAll(Provinces provinces) {
		return provincesMapper.selectAll(provinces);
	}

}
