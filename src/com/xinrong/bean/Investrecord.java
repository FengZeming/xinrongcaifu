package com.xinrong.bean;

import java.util.Date;

public class Investrecord {  //投资记录
    private Integer id;   //主键id

    private String businessno;  //交易流水号（唯一）

    private Integer itemid;  //关联项目id

    private Integer userid;  //关联人（关联用户表）    
    
    private Double money;   //金额

    private Double extramoney;   //附加费用

    private Date businessdate;  //交易日期

    private Integer businesstype;  //交易类型(1.投资方投资2.打款至融资方3.融资方返款4.平台返本息5.平台返本金6.平台返利息)

    private String remarks;  //备注
    
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

    public Integer getItemid() {
        return itemid;
    }

    public void setItemid(Integer itemid) {
        this.itemid = itemid;
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

    public Double getExtramoney() {
        return extramoney;
    }

    public void setExtramoney(Double extramoney) {
        this.extramoney = extramoney;
    }

    public Date getBusinessdate() {
        return businessdate;
    }

    public void setBusinessdate(Date businessdate) {
        this.businessdate = businessdate;
    }

    public Integer getBusinesstype() {
        return businesstype;
    }

    public void setBusinesstype(Integer businesstype) {
        this.businesstype = businesstype;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}