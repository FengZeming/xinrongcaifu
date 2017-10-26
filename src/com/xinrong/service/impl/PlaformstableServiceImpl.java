package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Platformstable;
import com.xinrong.dao.PlatformstableMapper;
import com.xinrong.service.PlatformstableService;
@Service
public class PlaformstableServiceImpl implements PlatformstableService{
	@Autowired
	private PlatformstableMapper plaformstableMapper; 
	@Override
	public boolean deleteByPrimaryKey(Integer id) {
		int i=plaformstableMapper.deleteByPrimaryKey(id);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insert(Platformstable record) {
		int i=plaformstableMapper.insert(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insertSelective(Platformstable record) {
		int i=plaformstableMapper.insertSelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public Platformstable selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateByPrimaryKeySelective(Platformstable record) {
		int i=plaformstableMapper.updateByPrimaryKeySelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateByPrimaryKey(Platformstable record) {
		int i=plaformstableMapper.updateByPrimaryKey(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public List<Platformstable> selectAll(Platformstable platformstable) {
		// TODO Auto-generated method stub
		return null;
	}

	public PlatformstableMapper getPlaformstableMapper() {
		return plaformstableMapper;
	}

	public void setPlaformstableMapper(PlatformstableMapper plaformstableMapper) {
		this.plaformstableMapper = plaformstableMapper;
	}
	

}
