package com.xinrong.service.impl;

import java.util.List;

import com.xinrong.dao.AcountsMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Acounts;
import com.xinrong.service.AccountService;
/**
 * 资金账户impl
 * @author lenovo
 *
 */
@Service
public class AccountServiceImpl implements AccountService{
	@Autowired
	private AcountsMapper acountsMapper;
	
	public AcountsMapper getAcountsMapper() {
		return acountsMapper;
	}

	public void setAcountsMapper(AcountsMapper acountsMapper) {
		this.acountsMapper = acountsMapper;
	}

	/**
	 * 删除
	 */
	public boolean deleteByPrimaryKey(Integer id) {
		int num=acountsMapper.deleteByPrimaryKey(id);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 添加
	 */
	public boolean insert(Acounts record) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 选择性添加
	 */
	public boolean insertSelective(Acounts record) {
		int num=acountsMapper.insertSelective(record);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}
	/**
     * 添加用户资金账户
     */
    public boolean insertUserAcount(Acounts acounts){
    	acounts.setType(2);
    	int num=acountsMapper.insertSelective(acounts);
		if(num>0){
			return true;
		}else{
			return false;
		}
    }
    /**
     * 添加用户借款账户 （信存宝账户）
     */
    public boolean insertUserLoanAcount(Acounts acounts){
    	acounts.setType(3);
    	int num=acountsMapper.insertSelective(acounts);
		if(num>0){
			return true;
		}else{
			return false;
		}
    }
    /**
     * 添加项目资金账户
     */
    public boolean insertProjectLoanAcount(Acounts acounts){
    	acounts.setType(4);
    	int num=acountsMapper.insertSelective(acounts);
		if(num>0){
			return true;
		}else{
			return false;
		}
    }

	/**
	 * 根据主键id查询
	 */
	public Acounts selectByPrimaryKey(Integer id) {
		return acountsMapper.selectByPrimaryKey(id);
	}

	/**
	 * 选择性更新
	 */
	public boolean updateByPrimaryKeySelective(Acounts record) {
		int num=acountsMapper.updateByPrimaryKeySelective(record);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 更新
	 */
	public boolean updateByPrimaryKey(Acounts record) {
		return false;
	}

	/**
	 * 查询全部
	 */
	public List<Acounts> selectAll(Acounts acounts) {
		return acountsMapper.selectAll(acounts);
	}
	
	/**
	 * 条件查询单个对象
	 */
	public Acounts selectOneByObject(Acounts acounts) {
		return acountsMapper.selectOneByObject(acounts);
	}

	/**
	 * 根据用户id查询用户资金账户
	 */
	public Acounts selectByUserId(Integer userid) {
		Acounts acounts=new Acounts();
		acounts.setUserid(userid);
		acounts.setType(2);
		return acountsMapper.selectOneByObject(acounts);
	}
	
	/**
	 * 根据用户id查询用户借款账户表（信存宝账户）
	 */
	public Acounts selectLoanAcountByUserId(Integer userid) {
		Acounts acounts=new Acounts();
		acounts.setUserid(userid);
		acounts.setType(3);
		return acountsMapper.selectOneByObject(acounts);
	}
	
	/**
	 * 根据项目id查询项目资金账户表
	 */
	public Acounts  selectByProjectId(Integer projectid){
		Acounts acounts=new Acounts();
		acounts.setProjectid(projectid);
		return acountsMapper.selectOneByObject(acounts);
	}

	/**
     * 信存宝账户充值
     */
	public String xincunbaoRecharge(Acounts acounts,Double addmoney) {
		Acounts finacingAcounts=new Acounts();//资金账户
		finacingAcounts.setUserid(acounts.getUserid());
		finacingAcounts.setType(2);
		finacingAcounts=acountsMapper.selectOneByObject(finacingAcounts);
		if(finacingAcounts.getMoney()>=addmoney){//判断资金账户是否有足够金额转入
			finacingAcounts.setMoney(finacingAcounts.getMoney()-addmoney);
			int num=acountsMapper.updateByPrimaryKeySelective(finacingAcounts);
			if(num<=0){
				return "error";//未知错误
			}
			acounts.setMoney(acounts.getMoney()+addmoney);//信存宝账户增加金额
			int a=acountsMapper.updateByPrimaryKeySelective(acounts);//修改数据库
			if(a>0){
				return "true";//成功
			}else{
				return "error";//未知错误
			}
		}else{
			return "noEnoughMoney";//资金账户没有足够金额
		}
	}

	/**
     * 信存宝账户提现
     */
	public String xincunbaoDeposit(Acounts acounts,Double rolloutmoney) {
		if(acounts.getMoney()>=rolloutmoney){
			acounts.setMoney(acounts.getMoney()-rolloutmoney);
			int a=acountsMapper.updateByPrimaryKeySelective(acounts);//信存宝账户提现
			if(a<=0){
				return "error";//未知错误
			}
			Acounts finacingAcounts=new Acounts();//资金账户
			finacingAcounts.setUserid(acounts.getUserid());
			finacingAcounts.setType(2);
			finacingAcounts=acountsMapper.selectOneByObject(finacingAcounts);
			finacingAcounts.setMoney(finacingAcounts.getMoney()+rolloutmoney);
			int b=acountsMapper.updateByPrimaryKeySelective(finacingAcounts);
			if(b>0){
				return "true";//成功
			}else{
				return "error";//未知错误
			}
		}else{
			return "noEnoughMoney";//信存宝账户没有足够金额
		}
	}
}
