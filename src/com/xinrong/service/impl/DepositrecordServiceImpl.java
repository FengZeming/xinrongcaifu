package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Depositrecord;
import com.xinrong.dao.DepositrecordMapper;
import com.xinrong.service.DepositrecordService;
@Service
public class DepositrecordServiceImpl implements DepositrecordService {
	@Autowired
	private DepositrecordMapper depositrecordMapper;
	
	public DepositrecordMapper getDepositrecordMapper() {
		return depositrecordMapper;
	}

	public void setDepositrecordMapper(DepositrecordMapper depositrecordMapper) {
		this.depositrecordMapper = depositrecordMapper;
	}

	@Override
	public boolean deleteByPrimaryKey(Integer id) {
		int i=depositrecordMapper.deleteByPrimaryKey(id);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insert(Depositrecord record) {
		int i=depositrecordMapper.insert(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insertSelective(Depositrecord record) {
		int i=depositrecordMapper.insertSelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public Depositrecord selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateByPrimaryKeySelective(Depositrecord record) {
		int i=depositrecordMapper.updateByPrimaryKeySelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateByPrimaryKey(Depositrecord record) {
		int i=depositrecordMapper.updateByPrimaryKey(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public List<Depositrecord> selectAll(Depositrecord depositrecord) {
		// TODO Auto-generated method stub
		return null;
	}

}
