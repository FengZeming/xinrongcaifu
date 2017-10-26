package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Areas;
import com.xinrong.dao.AreasMapper;
import com.xinrong.service.AreasService;
@Service
public class AreasServiceImpl implements AreasService {
     @Autowired
	private  AreasMapper areasMapper;
     
	public AreasMapper getAreasMapper() {
		return areasMapper;
	}

	public void setAreasMapper(AreasMapper areasMapper) {
		this.areasMapper = areasMapper;
	}

	
	//根据ID删除   
   
    
	@Override
	public boolean deleteByPrimaryKey(Integer id) {
		 int i=areasMapper.deleteByPrimaryKey(id);
		  if(i>0){
			  return true;
		  }
			return false;
	}
	
	
	 //根据对象插入全部  
    
    
	@Override
	public boolean insert(Areas record) {
		 int i=areasMapper.insert(record);
		  if(i>0){
			  return true;
		  }
			return false;
		}
	
	
	
	//选择性插入  
    
    
	@Override
	public boolean insertSelective(Areas record) {
		 int i=areasMapper.insertSelective(record);
		  if(i>0){
			  return true;
		  }
			return false;
	}
	

	//根据ID查询   
    
	@Override
	public Areas selectByPrimaryKey(Integer id) {
		
		return areasMapper.selectByPrimaryKey(id);
	}
	  
	//选择性更新   
    
    
	@Override
	public boolean updateByPrimaryKeySelective(Areas record) {
		 int i=areasMapper.updateByPrimaryKeySelective(record);
		  if(i>0){
			  return true;
		  }
			return false;
		}
	
	   
	//全部更新
   
  
	@Override
	public boolean updateByPrimaryKey(Areas record) {
		 int i=areasMapper.updateByPrimaryKey(record);
		  if(i>0){
			  return true;
		  }
			return false;
		}
	
	
	 //查询全部
	@Override
	public List<Areas> selectAll(Areas record) {

		return areasMapper.selectAll(record);
	}

}
