package com.xinrong.bean;

import java.util.Date;
/**
 * 用户表
 * @author lenovo
 *
 */
public class Users {
    private Integer id;//	主键id	

    private String username;//	账号（唯一）	

    private String password;//	密码	

    private String name;//	姓名	

    private String identifyno;//	证件号	

    private Integer vipid;//	VIP等级id	

    private String phonenumber;//	手机号	

    private String email;//	邮箱地址	

    private Integer adressid;//	用户地址-关联地址表	

    private Integer creditlevel;//	信用等级	

    private Integer bankid;//	开户银行(关联银行表)	

    private Integer bankadressid;//	银行所在地id-关联地址表

    private String banknumber;//	银行卡号	

    private Integer actualnamestatus;//	实名认证状态	

    private Date createdate;//	创建时间	

    private Date modifydate;//	修改时间	

    private Double restminpayment;//	上月未清偿最低还款额	

    private Integer latedays;//	滞纳天数（每日更新）	
    
    private Double creditline;//信用额度

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIdentifyno() {
        return identifyno;
    }

    public void setIdentifyno(String identifyno) {
        this.identifyno = identifyno == null ? null : identifyno.trim();
    }

    public Integer getVipid() {
        return vipid;
    }

    public void setVipid(Integer vipid) {
        this.vipid = vipid;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber == null ? null : phonenumber.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Integer getAdressid() {
        return adressid;
    }

    public void setAdressid(Integer adressid) {
        this.adressid = adressid;
    }

    public Integer getCreditlevel() {
        return creditlevel;
    }

    public void setCreditlevel(Integer creditlevel) {
        this.creditlevel = creditlevel;
    }

    public Integer getBankid() {
        return bankid;
    }

    public void setBankid(Integer bankid) {
        this.bankid = bankid;
    }

    public Integer getBankadressid() {
        return bankadressid;
    }

    public void setBankadressid(Integer bankadressid) {
        this.bankadressid = bankadressid;
    }

    public String getBanknumber() {
        return banknumber;
    }

    public void setBanknumber(String banknumber) {
        this.banknumber = banknumber == null ? null : banknumber.trim();
    }

    public Integer getActualnamestatus() {
        return actualnamestatus;
    }

    public void setActualnamestatus(Integer actualnamestatus) {
        this.actualnamestatus = actualnamestatus;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }

    public Double getRestminpayment() {
        return restminpayment;
    }

    public void setRestminpayment(Double restminpayment) {
        this.restminpayment = restminpayment;
    }

    public Integer getLatedays() {
        return latedays;
    }

    public void setLatedays(Integer latedays) {
        this.latedays = latedays;
    }

	public Double getCreditline() {
		return creditline;
	}

	public void setCreditline(Double creditline) {
		this.creditline = creditline;
	}
    
}