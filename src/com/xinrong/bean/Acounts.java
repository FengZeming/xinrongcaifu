package com.xinrong.bean;

public class Acounts {
    private Integer id;//主键id

    private Integer userid;//用户id-关联用户表

    private Integer projectid;//项目id-关联项目表

    private Integer type;//类型（1.平台账户2.用户资金账户3.用户借款账户4.项目资金账户）

    private Double money;//金额

    private String password;//交易密码
    
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

    public Integer getProjectid() {
        return projectid;
    }

    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
    
    
}