package com.xinrong.service;

import java.util.List;

import com.xinrong.bean.Users;

/**
 * 用户Service
 * @author lenovo
 *
 */
public interface UsersService {
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
    boolean insert(Users record);
    /**
     * 选择性添加
     * @param record
     * @return
     */
    boolean insertSelective(Users record);
    /**
     * 根据主键查询
     * @param id
     * @return
     */
    Users selectByPrimaryKey(Integer id);
    /**
     * 选择性更新
     * @param record
     * @return
     */
    boolean updateByPrimaryKeySelective(Users record);
    /**
     * 更新
     * @param record
     * @return
     */
    boolean updateByPrimaryKey(Users record);
    /**
     * 查询全部
     */
    List<Users> selectAll(Users users);
    /**
     * 登陆
     */
    boolean login(String username,String password);
}
