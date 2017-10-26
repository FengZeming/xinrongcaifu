package com.xinrong.service;

import java.util.List;

import com.xinrong.bean.Provinces;
/**
 * 省Service
 * @author lenovo
 *
 */
public interface ProvincesService {
	/**
	 * 删除
	 * @param id
	 * @return
	 */
    boolean deleteByPrimaryKey(Integer id);
    /**
     * 添加
     * @param record
     * @return
     */
    boolean insert(Provinces record);
    /**
     * 选择性添加
     * @param record
     * @return
     */
    boolean insertSelective(Provinces record);
    /**
     * 根据主键查询
     * @param id
     * @return
     */
    Provinces selectByPrimaryKey(Integer id);
    /**
     * 选择性更新
     * @param record
     * @return
     */
    boolean updateByPrimaryKeySelective(Provinces record);
    /**
     * 更新
     * @param record
     * @return
     */
    boolean updateByPrimaryKey(Provinces record);
    /**
     * 查询全部
     */
    List<Provinces> selectAll(Provinces provinces);
}
