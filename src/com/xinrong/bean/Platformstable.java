package com.xinrong.bean;
/**
 * 平台数据表
 * @author lenovo
 *
 */
public class Platformstable {
    private Integer id;

    private Double totaltransactions;//交易总额

    private Double amountmoney;//待偿金额

    private Double totalrevenue;//为投资人赚取总收益

    private Integer usernum;//用户人数

    private Integer totaltradenum;//累计交易总笔数

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getTotaltransactions() {
        return totaltransactions;
    }

    public void setTotaltransactions(Double totaltransactions) {
        this.totaltransactions = totaltransactions;
    }

    public Double getAmountmoney() {
        return amountmoney;
    }

    public void setAmountmoney(Double amountmoney) {
        this.amountmoney = amountmoney;
    }

    public Double getTotalrevenue() {
        return totalrevenue;
    }

    public void setTotalrevenue(Double totalrevenue) {
        this.totalrevenue = totalrevenue;
    }

    public Integer getUsernum() {
        return usernum;
    }

    public void setUsernum(Integer usernum) {
        this.usernum = usernum;
    }

    public Integer getTotaltradenum() {
        return totaltradenum;
    }

    public void setTotaltradenum(Integer totaltradenum) {
        this.totaltradenum = totaltradenum;
    }
}