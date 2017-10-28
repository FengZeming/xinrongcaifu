package com.xinrong.service.impl;

import java.util.Date;
import java.util.List;

import com.xinrong.dao.AcountsMapper;
import com.xinrong.dao.DepositrecordMapper;
import com.xinrong.dao.LoanrecoredMapper;
import com.xinrong.dao.UsersMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Acounts;
import com.xinrong.bean.Depositrecord;
import com.xinrong.bean.Loanrecored;
import com.xinrong.bean.Users;
import com.xinrong.service.AccountService;
import com.xinrong.util.BusinessNoUtil;
/**
 * 资金账户impl
 * @author lenovo
 *
 */
@Service
public class AccountServiceImpl implements AccountService{
	@Autowired
	private AcountsMapper acountsMapper;
	@Autowired
	private UsersMapper usersMapper;
	@Autowired
	private LoanrecoredMapper loanrecoredMapper;
	@Autowired
	private DepositrecordMapper depositrecordMapper;
	
	public AcountsMapper getAcountsMapper() {
		return acountsMapper;
	}

	public void setAcountsMapper(AcountsMapper acountsMapper) {
		this.acountsMapper = acountsMapper;
	}
	
	public UsersMapper getUsersMapper() {
		return usersMapper;
	}

	public void setUsersMapper(UsersMapper usersMapper) {
		this.usersMapper = usersMapper;
	}

	public LoanrecoredMapper getLoanrecoredMapper() {
		return loanrecoredMapper;
	}

	public void setLoanrecoredMapper(LoanrecoredMapper loanrecoredMapper) {
		this.loanrecoredMapper = loanrecoredMapper;
	}

	public DepositrecordMapper getDepositrecordMapper() {
		return depositrecordMapper;
	}

	public void setDepositrecordMapper(DepositrecordMapper depositrecordMapper) {
		this.depositrecordMapper = depositrecordMapper;
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
			int a=acountsMapper.updateByPrimaryKeySelective(acounts);//修改账户表
			//创建借款记录表对象
			Loanrecored loanrecored=new Loanrecored();
			loanrecored.setUserid(acounts.getUserid());
			loanrecored.setBusinessno(BusinessNoUtil.createLoanBusinessNo(acounts.getUserid()));
			loanrecored.setBusinessdate(new Date());
			loanrecored.setMoney(addmoney);
			loanrecored.setType(6);//设置借款记录表类型为充值
			int b=loanrecoredMapper.insertSelective(loanrecored);//修改借款记录表
			//创建充值提现记录表对象
			Depositrecord depositrecord=new Depositrecord();
			depositrecord.setUserid(acounts.getUserid());
			depositrecord.setSerialnum(BusinessNoUtil.createDepositeBusinessNo(acounts.getUserid()));
			depositrecord.setTransactionamount(addmoney);
			depositrecord.setTransactiontype(2);//设置充值提现记录类型为提现
			depositrecord.setTransactionmode(4);//设置交易方式为信存宝转账
			depositrecord.setTransactiondate(new Date());
			int c=depositrecordMapper.insertSelective(depositrecord);
			if(a>0&&b>0&&c>0){
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
		if(acounts.getMoney()>=rolloutmoney){//金额足够，全部为提现 
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
			int b=acountsMapper.updateByPrimaryKeySelective(finacingAcounts);//修改账户表
			//创建借款记录表对象
			Loanrecored loanrecored=new Loanrecored();
			loanrecored.setUserid(acounts.getUserid());
			loanrecored.setBusinessno(BusinessNoUtil.createLoanBusinessNo(acounts.getUserid()));
			loanrecored.setBusinessdate(new Date());
			loanrecored.setMoney(rolloutmoney);
			loanrecored.setType(7);//设置借款记录表类型为提现 
			int c=loanrecoredMapper.insertSelective(loanrecored);//修改借款记录表
			//创建充值提现记录表对象
			Depositrecord depositrecord=new Depositrecord();
			depositrecord.setUserid(acounts.getUserid());
			depositrecord.setSerialnum(BusinessNoUtil.createDepositeBusinessNo(acounts.getUserid()));
			depositrecord.setTransactionamount(rolloutmoney);
			depositrecord.setTransactiontype(1);//设置充值提现记录类型为充值
			depositrecord.setTransactionmode(4);//设置交易方式为信存宝转账
			depositrecord.setTransactiondate(new Date());
			int d=depositrecordMapper.insertSelective(depositrecord);
			if(b>0&&c>0&&d>0){
				return "true";//成功
			}else{
				return "error";//未知错误
			}
		}else{//部分 提现，部分借款
			Double depositeMoney=acounts.getMoney();//提现金额
			Double loanMoney=rolloutmoney-acounts.getMoney();//借款金额
			Users users=usersMapper.selectByPrimaryKey(acounts.getUserid());
			Double creditline=users.getCreditline();
			if(creditline<loanMoney){
				return "noEnoughMoney";//信存宝账户借款额度不足
			}
			Acounts finacingAcounts=new Acounts();//资金账户
			finacingAcounts.setUserid(acounts.getUserid());
			finacingAcounts.setType(2);
			finacingAcounts=acountsMapper.selectOneByObject(finacingAcounts);
			finacingAcounts.setMoney(finacingAcounts.getMoney()+rolloutmoney);
			int a=acountsMapper.updateByPrimaryKeySelective(finacingAcounts);//修改账户表
			//创建借款记录表对象（提现）
			Loanrecored loanrecored=new Loanrecored();
			loanrecored.setUserid(acounts.getUserid());
			loanrecored.setBusinessno(BusinessNoUtil.createLoanBusinessNo(acounts.getUserid()));
			loanrecored.setBusinessdate(new Date());
			loanrecored.setMoney(depositeMoney);
			loanrecored.setType(7);//设置借款记录表类型为提现 
			int b=loanrecoredMapper.insertSelective(loanrecored);//修改借款记录表
			//创建借款记录表对象（借款）
			Loanrecored loanrecored2=new Loanrecored();
			loanrecored2.setUserid(acounts.getUserid());
			loanrecored2.setBusinessno(BusinessNoUtil.createLoanBusinessNo(acounts.getUserid()));
			loanrecored2.setBusinessdate(new Date());
			loanrecored2.setMoney(depositeMoney);
			loanrecored2.setType(1);//设置借款记录表类型为提现 
			int c=loanrecoredMapper.insertSelective(loanrecored2);//修改借款记录表
			//创建充值提现记录表对象
			Depositrecord depositrecord=new Depositrecord();
			depositrecord.setUserid(acounts.getUserid());
			depositrecord.setSerialnum(BusinessNoUtil.createDepositeBusinessNo(acounts.getUserid()));
			depositrecord.setTransactionamount(rolloutmoney);
			depositrecord.setTransactiontype(1);//设置充值提现记录类型为充值
			depositrecord.setTransactionmode(4);//设置交易方式为信存宝转账
			depositrecord.setTransactiondate(new Date());
			int d=depositrecordMapper.insertSelective(depositrecord);//修改充值提现记录表
			acounts.setMoney(acounts.getMoney()-rolloutmoney);
			int e=acountsMapper.updateByPrimaryKeySelective(acounts);//修改信存宝账户的数据表
			if(a>0&&b>0&&c>0&&d>0&&e>0){
				return "true";//成功
			}else{
				return "error";//未知错误
			}
		}
	}
}
