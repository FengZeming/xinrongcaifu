package com.xinrong.service;

import java.util.List;

import com.xinrong.bean.Acounts;
/**
 * 资金账户Service
 * @author lenovo
 *
 */
public interface AccountService {
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
    boolean insert(Acounts record);
    
    /**
     * 选择性添加
     * @param record
     * @return
     */
    boolean insertSelective(Acounts record);
    
    /**
     * 根据主键查询
     * @param id
     * @return
     */
    Acounts selectByPrimaryKey(Integer id);
    
    /**
     * 选择性更新
     * @param record
     * @return
     */
    boolean updateByPrimaryKeySelective(Acounts record);
    
    /**
     * 更新
     * @param record
     * @return
     */
    boolean updateByPrimaryKey(Acounts record);
    
    /**
     * 查询全部
     * @param acounts
     * @return
     */
    List<Acounts> selectAll(Acounts acounts);
}
