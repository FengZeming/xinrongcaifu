package com.xinrong.bean;

import java.util.Date;

public class Depositrecord {
    private Integer id;  //主键id

    private Integer userid;  //用户id-关联用户表

    private String serialnum;  //流水号

    private Integer transactiontype;  //交易类型(1.充值2.提现)

    private Double transactionamount;  //交易金额

    private Double interest;  //利息

    private Integer transactionmode;  //交易方式（1.银联卡支付2.微信支付3.支付宝支付4.信存宝转账）

    private Date transactiondate;  //交易日期

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getSerialnum() {
        return serialnum;
    }

    public void setSerialnum(String serialnum) {
        this.serialnum = serialnum == null ? null : serialnum.trim();
    }

    public Integer getTransactiontype() {
        return transactiontype;
    }

    public void setTransactiontype(Integer transactiontype) {
        this.transactiontype = transactiontype;
    }

    public Double getTransactionamount() {
        return transactionamount;
    }

    public void setTransactionamount(Double transactionamount) {
        this.transactionamount = transactionamount;
    }

    public Double getInterest() {
        return interest;
    }

    public void setInterest(Double interest) {
        this.interest = interest;
    }

    public Integer getTransactionmode() {
        return transactionmode;
    }

    public void setTransactionmode(Integer transactionmode) {
        this.transactionmode = transactionmode;
    }

    public Date getTransactiondate() {
        return transactiondate;
    }

    public void setTransactiondate(Date transactiondate) {
        this.transactiondate = transactiondate;
    }
}