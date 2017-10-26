package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Investrecord;
import com.xinrong.dao.InvestrecordsMapper;
import com.xinrong.service.InvestrecordsService;
@Service
public class InvestrecordsServiceImpl implements InvestrecordsService {
	@Autowired
	private InvestrecordsMapper investrecordsMapper;
		
	public InvestrecordsMapper getInvestrecordsMapper() {
		return investrecordsMapper;
	}

	public void setInvestrecordsMapper(InvestrecordsMapper investrecordsMapper) {
		this.investrecordsMapper = investrecordsMapper;
	}
	@Override
	//根据id删除投资记录
	public boolean deleteByPrimaryKey(Integer id) {
		int i=investrecordsMapper.deleteByPrimaryKey(id);
		if(i>0){
			return true;
		}
		return false;
	}
	@Override
	//插入所有投资记录
	public boolean insert(Investrecord record) {
		int i=investrecordsMapper.insert(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	//选择性插入投资记录
	public boolean insertSelective(Investrecord record) {
		int i=investrecordsMapper.insertSelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	//根据id查询投资记录
	public Investrecord selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return investrecordsMapper.selectByPrimaryKey(id);
	}

	@Override
	//选择性更新投资记录
	public boolean updateByPrimaryKeySelective(Investrecord record) {
		int i=investrecordsMapper.updateByPrimaryKeySelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	//更新所有投资记录
	public boolean updateByPrimaryKey(Investrecord record) {
		int i=investrecordsMapper.updateByPrimaryKey(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	 //查询所有投资记录
	public List<Investrecord> selectAll(Investrecord investrecord) {
		// TODO Auto-generated method stub
		return null;
	}

}
