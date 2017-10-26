package com.xinrong.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Series;
import com.xinrong.dao.SeriesMapper;
import com.xinrong.service.SeriesService;
/**
 * 系列Impl
 * @author lenovo
 *
 */
@Service
public class SeriesServiceImpl implements SeriesService{
	@Autowired
	private SeriesMapper seriesMapper;
	
	
	public SeriesMapper getSeriesMapper() {
		return seriesMapper;
	}

	public void setSeriesMapper(SeriesMapper seriesMapper) {
		this.seriesMapper = seriesMapper;
	}

	/**
	 * 删除
	 */
	public boolean deleteByPrimaryKey(Integer id) {
		int num=seriesMapper.deleteByPrimaryKey(id);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 插入
	 */
	public boolean insert(Series record) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 选择性插入
	 */
	public boolean insertSelective(Series record) {
		int num=seriesMapper.insertSelective(record);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 根据主键查询
	 */
	public Series selectByPrimaryKey(Integer id) {
		return seriesMapper.selectByPrimaryKey(id);
	}

	/**
	 * 选择性更新
	 */
	public boolean updateByPrimaryKeySelective(Series record) {
		int num=seriesMapper.updateByPrimaryKeySelective(record);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 更新
	 */
	public boolean updateByPrimaryKey(Series record) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 查询全部
	 */
	public List<Series> selectAll(Series series) {
		return seriesMapper.selectAll(series);
	}
	
}
