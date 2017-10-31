package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Acounts;
import com.xinrong.bean.Users;
import com.xinrong.dao.AcountsMapper;
import com.xinrong.dao.UsersMapper;
import com.xinrong.service.UsersService;
@Service
public class UsersServiceImpl implements UsersService{
	@Autowired
	private UsersMapper usersMapper;
	@Autowired
	private AcountsMapper acountsMapper;
	

	public UsersMapper getUsersMapper() {
		return usersMapper;
	}

	public void setUsersMapper(UsersMapper usersMapper) {
		this.usersMapper = usersMapper;
	}

	/**
	 * 删除
	 */
	public boolean deleteByPrimaryKey(Integer id) {
		int num=usersMapper.deleteByPrimaryKey(id);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 插入
	 */
	public boolean insert(Users record) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 注册用户
	 */
	public boolean insertSelective(Users record) {
		int num1=usersMapper.insertSelective(record);
		Integer userid=usersMapper.selectMaxId();
		//创建用户资金账户表对象
		Acounts acounts=new Acounts();
		acounts.setUserid(userid);
		acounts.setMoney((double) 0);
		acounts.setType(2);
		acounts.setPassword("123456");//测试用，暂定为123456
		int num2=acountsMapper.insertSelective(acounts);//添加至数据库
		//创建用户借款账户表对象
		acounts.setType(3);
		int num3=acountsMapper.insertSelective(acounts);
		if(num1>0&&num2>0&&num3>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 根据主键查询
	 */
	public Users selectByPrimaryKey(Integer id) {
		return usersMapper.selectByPrimaryKey(id);
	}

	/**
	 * 选择性更新
	 */
	public boolean updateByPrimaryKeySelective(Users record) {
		int num=usersMapper.updateByPrimaryKeySelective(record);
		if(num>0){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 更新
	 */
	public boolean updateByPrimaryKey(Users record) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 查询全部
	 */
	public List<Users> selectAll(Users users) {
		return usersMapper.selectAll(users);
	}
	/**
	 * 登陆
	 */

	/**
	 * 根据账户密码判断是否登陆
	 */
	//登录方法的实现,从jsp页面获取username与password
	public boolean login(String username, String password) {
		Users users=null;
		users=usersMapper.getLoginUser(username);
		if (users!=null) {
			if (users.getUsername().equals(username)&&users.getPassword().equals(password)) {
				users=null;
				return true;
			} 
		}
		return false;
	}
	/**
	 * 登陆返回用户名
	 */
	@Override
	public Users getLoginUser(String username) {
		Users users=usersMapper.getLoginUser(username);
		return users;
	}
	
}
