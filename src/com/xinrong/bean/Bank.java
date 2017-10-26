package com.xinrong.bean;
 
//银行表
public class Bank {
	 //主键ID
  private Integer id;
	//银行名称
  private String bankname;
  //银行logo图片路径
    private String logourl;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBankname() {
        return bankname;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname == null ? null : bankname.trim();
    }

    public String getLogourl() {
        return logourl;
    }

    public void setLogourl(String logourl) {
        this.logourl = logourl == null ? null : logourl.trim();
    }
}