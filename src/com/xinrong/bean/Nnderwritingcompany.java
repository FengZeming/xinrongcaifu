package com.xinrong.bean;

import java.util.Date;

public class Nnderwritingcompany {
    private Integer id;

    private String companyname;//担保公司名称

    private String registeredcapital;//注册资本

    private Date establishdate;//成立时间

    private String businessscope;//经营范围

    private String companybrief;//公司简介

    private String cretificatephotourl;//公司证照url

    private String agreementurl;//战略合作协议

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname == null ? null : companyname.trim();
    }

    public String getRegisteredcapital() {
        return registeredcapital;
    }

    public void setRegisteredcapital(String registeredcapital) {
        this.registeredcapital = registeredcapital == null ? null : registeredcapital.trim();
    }

    public Date getEstablishdate() {
        return establishdate;
    }

    public void setEstablishdate(Date establishdate) {
        this.establishdate = establishdate;
    }

    public String getBusinessscope() {
        return businessscope;
    }

    public void setBusinessscope(String businessscope) {
        this.businessscope = businessscope == null ? null : businessscope.trim();
    }

    public String getCompanybrief() {
        return companybrief;
    }

    public void setCompanybrief(String companybrief) {
        this.companybrief = companybrief == null ? null : companybrief.trim();
    }

    public String getCretificatephotourl() {
        return cretificatephotourl;
    }

    public void setCretificatephotourl(String cretificatephotourl) {
        this.cretificatephotourl = cretificatephotourl == null ? null : cretificatephotourl.trim();
    }

    public String getAgreementurl() {
        return agreementurl;
    }

    public void setAgreementurl(String agreementurl) {
        this.agreementurl = agreementurl == null ? null : agreementurl.trim();
    }
}