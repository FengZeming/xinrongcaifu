package com.xinrong.dao;

import java.util.List;

import com.xinrong.bean.Loanrecored;

public interface LoanrecoredMapper {     //借款记录
    int deleteByPrimaryKey(Integer id);   //根据id删除借款记录

    int insert(Loanrecored record);  //插入所有借款记录

    int insertSelective(Loanrecored record);  //选择性插入借款记录

    Loanrecored selectByPrimaryKey(Integer id);   //根据id查询借款记录

    int updateByPrimaryKeySelective(Loanrecored record);    //选择性更新借款记录

    int updateByPrimaryKey(Loanrecored record);   //更新所有借款记录
    
    List<Loanrecored> selectAll(Loanrecored loanrecored);   //查询所有借款记录
}