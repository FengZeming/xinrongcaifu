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
     * 添加用户资金账户
     */
    boolean insertUserAcount(Acounts acounts);
    /**
     * 添加用户借款账户 （信存宝账户）
     */
    boolean insertUserLoanAcount(Acounts acounts);
    /**
     * 添加项目资金账户
     */
    boolean insertProjectLoanAcount(Acounts acounts);
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
    
    /**
     * 条件查询单个对象
     */
    Acounts selectOneByObject(Acounts acounts);
    
    /**
     * 根据用户id查询用户资金账户表
     */
    Acounts selectByUserId(Integer userid);
    
    /**
     * 根据用户id查询用户借款账户表（信存宝）
     */
    Acounts selectLoanAcountByUserId(Integer userid);
    
    
    /**
     * 根据项目id查询项目资金账户表
     * @return
     */
    Acounts selectByProjectId(Integer  projectid);
    
    /**
     * 信存宝账户充值
     */
    String xincunbaoRecharge(Acounts  acounts,Double addmoney);
    /**
     * 信存宝账户提现
     */
    String xincunbaoDeposit(Acounts  acounts,Double rolloutmoney);
}
