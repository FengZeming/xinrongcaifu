package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Bank;
import com.xinrong.dao.BankMapper;
import com.xinrong.service.BankService;
@Service
public class BankServiceImpl implements BankService {
    @Autowired
	private BankMapper bankMapper;
	
	public BankMapper getBankMapper() {
		return bankMapper;
	}

	public void setBankMapper(BankMapper bankMapper) {
		this.bankMapper = bankMapper;
	}

	
	//根据ID删除   
    
   
	@Override
	public boolean deleteByPrimaryKey(Integer id) {
		int i=bankMapper.deleteByPrimaryKey(id);
		  if(i>0){
			  return true;
		  }
			return false;
		}
	
	
	//根据对象插入全部  
   
    
	@Override
	public boolean insert(Bank record) {
		int i=bankMapper.insert(record);
		  if(i>0){
			  return true;
		  }
			return false;
		}
	
	
	
	 //选择性插入  
    
	@Override
	public boolean insertSelective(Bank record) {
		int i=bankMapper.insertSelective(record);
		  if(i>0){
			  return true;
		  }
			return false;
		}
	
	
	 
	//根据ID查询   
   
    
    
	@Override
	public Bank selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return bankMapper.selectByPrimaryKey(id);
	}
	 //选择性更新   
    
	@Override
	public boolean updateByPrimaryKeySelective(Bank record) {
		int i=bankMapper.updateByPrimaryKeySelective(record);
		  if(i>0){
			  return true;
		  }
			return false;
	}
	
		
	
     
	//全部更新
    
	@Override
	public boolean updateByPrimaryKey(Bank record) {
		int i=bankMapper.updateByPrimaryKey(record);
		  if(i>0){
			  return true;
		  }
			return false;
	}
	
	
	 
   
	//查询全部 
	@Override
	public List<Bank> selectAll(Bank record) {
		// TODO Auto-generated method stub
		return bankMapper.selectAll(record);
	}

}
