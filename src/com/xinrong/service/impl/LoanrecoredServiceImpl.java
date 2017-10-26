package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Loanrecored;
import com.xinrong.dao.LoanrecoredMapper;
import com.xinrong.service.LoanrecoredService;
@Service
public class LoanrecoredServiceImpl implements LoanrecoredService {
	@Autowired
	private LoanrecoredMapper loanrecoredMapper;
	
	public LoanrecoredMapper getLoanrecoredMapper() {
		return loanrecoredMapper;
	}

	public void setLoanrecoredMapper(LoanrecoredMapper loanrecoredMapper) {
		this.loanrecoredMapper = loanrecoredMapper;
	}

	@Override
	public boolean deleteByPrimaryKey(Integer id) {
		int i=loanrecoredMapper.deleteByPrimaryKey(id);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insert(Loanrecored record) {
		int i=loanrecoredMapper.insert(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insertSelective(Loanrecored record) {
		int i=loanrecoredMapper.insertSelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public Loanrecored selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return loanrecoredMapper.selectByPrimaryKey(id);
	}

	@Override
	public boolean updateByPrimaryKeySelective(Loanrecored record) {
		int i=loanrecoredMapper.updateByPrimaryKeySelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateByPrimaryKey(Loanrecored record) {
		int i=loanrecoredMapper.updateByPrimaryKey(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public List<Loanrecored> selectAll(Loanrecored loanrecored) {
		// TODO Auto-generated method stub
		return null;
	}

}
