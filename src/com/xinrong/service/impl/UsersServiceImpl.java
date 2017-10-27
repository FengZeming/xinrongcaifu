package com.xinrong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Users;
import com.xinrong.dao.UsersMapper;
import com.xinrong.service.UsersService;
@Service
public class UsersServiceImpl implements UsersService{
	@Autowired
	private UsersMapper usersMapper;
	

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
	 * 选择性插入
	 */
	public boolean insertSelective(Users record) {
		int num=usersMapper.insertSelective(record);
		if(num>0){
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
