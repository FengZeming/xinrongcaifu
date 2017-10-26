package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Address;
import com.xinrong.dao.AddressMapper;
import com.xinrong.service.AddressService;
@Service
public class AddressServiceImpl implements AddressService {
   @Autowired
   private AddressMapper addressMapper;
   
	public AddressMapper getAddressMapper() {
	return addressMapper;
	}
	
	public void setAddressMapper(AddressMapper addressMapper) {
		this.addressMapper = addressMapper;
	}

  
    
    
   
  
  
  
	
	
	
	//根据ID删除   
   
	@Override
	public boolean deleteByPrimaryKey(Integer id) {
		
	 int i=addressMapper.deleteByPrimaryKey(id);
	  if(i>0){
		  return true;
	  }
		return false;
	}


	  //根据对象插入全部  
    
	@Override
	public boolean insert(Address record) {
		 int i=addressMapper.insert(record);
		  if(i>0){
			  return true;
		  }
			return false;
		
	}
	
	//选择性插入  
    
	@Override
	public boolean insertSelective(Address record) {
		int i=addressMapper.insertSelective(record);
		  if(i>0){
			  return true;
		  }
			return false;
		
	
	}
	 
	//根据ID查询    
   
	@Override
	public Address selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return addressMapper.selectByPrimaryKey(id);
	}
	 
	 //选择性更新   
    
	@Override
	public boolean updateByPrimaryKeySelective(Address record) {
		int i=addressMapper.updateByPrimaryKeySelective(record);
		  if(i>0){
			  return true;
		  }
			return false;
		
	
	}
  
	  //全部更新
    
	@Override
	public boolean updateByPrimaryKey(Address record) {
		int i=addressMapper.updateByPrimaryKey(record);
		  if(i>0){
			  return true;
		  }
			return false;
		
	
	}
	
	
	  //查询全部
	@Override
	public List<Address> selectAll(Address record) {

		return addressMapper.selectAll(record);
	}

}
