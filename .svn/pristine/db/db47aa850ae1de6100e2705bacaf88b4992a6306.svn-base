package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xinrong.bean.Nnderwritingcompany;
import com.xinrong.dao.NnderwritingcompanyMapper;
import com.xinrong.service.NnderwritingcompanyService;
//担保公司
@Service
public class NndeerwritingcompanyServiceImpl implements NnderwritingcompanyService {
	@Autowired
	private  NnderwritingcompanyMapper nndeerwritingcompanyMapper;

	@Override
	public boolean deleteByPrimaryKey(Integer id) {
	//根据主键删除担保公司
	 int i=nndeerwritingcompanyMapper.deleteByPrimaryKey(id);
	 if(i>0){
		 return true;
	 }
		return false;
	}

	@Override
	public  boolean insert(Nnderwritingcompany record) {
		//新增担保公司
		int i=nndeerwritingcompanyMapper.insert(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean insertSelective(Nnderwritingcompany record) {
		//选择性增加担保公司
		int i=nndeerwritingcompanyMapper.insertSelective(record);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public Nnderwritingcompany selectByPrimaryKey(Integer id) {
		//根据主键查找担保公司
		return null;
	}

	@Override
	public boolean updateByPrimaryKeySelective(Nnderwritingcompany record) {
		//根据主键条件性修改担保公司
		int i=nndeerwritingcompanyMapper.updateByPrimaryKeySelective(record);
		if (i>0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean updateByPrimaryKey(Nnderwritingcompany record) {
		//根据主键修改担保公司
		int i=nndeerwritingcompanyMapper.updateByPrimaryKey(record);
		if (i>0) {
			return true;
			
		}
		return false;
	}

	@Override
	public List<Nnderwritingcompany> selectAll(
			Nnderwritingcompany nnderwritingcompany) {
		//查询所有
		return null;
	}

	public NnderwritingcompanyMapper getNndeerwritingcompanyMapper() {
		return nndeerwritingcompanyMapper;
	}

	public void setNndeerwritingcompanyMapper(
			NnderwritingcompanyMapper nndeerwritingcompanyMapper) {
		this.nndeerwritingcompanyMapper = nndeerwritingcompanyMapper;
	}
	  
	
	

}
