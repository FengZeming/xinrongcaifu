package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Cities;
import com.xinrong.dao.CitiesMapper;
import com.xinrong.service.CitiesService;
@Service
public class CitiesServiceImpl implements CitiesService {
	@Autowired
	private CitiesMapper citiesMapper;
	
	public CitiesMapper getCitiesMapper() {
		return citiesMapper;
	}

	public void setCitiesMapper(CitiesMapper citiesMapper) {
		this.citiesMapper = citiesMapper;
	}

	@Override
	public boolean deleteByPrimaryKey(Integer id) {
		int i=citiesMapper.deleteByPrimaryKey(id);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insert(Cities record) {
		int i=citiesMapper.insert(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insertSelective(Cities record) {
		int i=citiesMapper.insertSelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public Cities selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateByPrimaryKeySelective(Cities record) {
		int i=citiesMapper.updateByPrimaryKeySelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateByPrimaryKey(Cities record) {
		int i=citiesMapper.updateByPrimaryKey(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public List<Cities> selectAll(Cities cities) {
		// TODO Auto-generated method stub
		return null;
	}

}
