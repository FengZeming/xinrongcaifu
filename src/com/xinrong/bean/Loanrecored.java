package com.xinrong.bean;

import java.util.Date;

public class Loanrecored {   //借款记录
    private Integer id;  //主键id

    private String businessno;   //流水号

    private Integer userid;  //用户id-关联用户表

    private Double money;  //交易金额

    private Date businessdate;  //交易日期

    private Integer type;  //交易类型(1.借款2.还款 3.产生利息4.滞纳金5.结转上月)6.充值7.提现

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBusinessno() {
        return businessno;
    }

    public void setBusinessno(String businessno) {
        this.businessno = businessno == null ? null : businessno.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Date getBusinessdate() {
        return businessdate;
    }

    public void setBusinessdate(Date businessdate) {
        this.businessdate = businessdate;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}