<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信融财富</title>

<link href="../../css/Account.css" tppabs="https://xin/2.0/css/Account.css" rel="stylesheet" type="text/css" />
<link href="../../css/basic.css" tppabs="https://xin/2.0/css/basic.css" rel="stylesheet" type="text/css" />
<link href="../../css/dialog.css" tppabs="https://xin/2.0/css/dialog.css" rel="stylesheet" type="text/css" />
<link href="../../css/global.css" tppabs="https://xin/2.0/css/global.css" rel="stylesheet" type="text/css" />
<link href="../../css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css" rel="stylesheet" type="text/css" />
<link href="../../css/autoinvest.css" tppabs="https://xin/2.0/css/autoinvest.css" rel="stylesheet" type="text/css" />
	<link href="../../css/esw_dialog.css" tppabs="https://xin/2.0/css/esw_dialog.css" rel="stylesheet" type="text/css" />

<!--<script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->
<!-- <script type="text/javascript" src="/2.0/js/jquery-1.10.2.min.js"></script> -->
<!-- <script type="text/javascript" src="../../js/jquery-1.4.2.js" tppabs="https://xin/2.0/js/jquery-1.4.2.js"></script> -->
<script type="text/javascript" src="../../js/jquery-1.10.2.js" tppabs="https://xin/2.0/js/jquery-1.10.2.js"></script>
<script type="text/javascript">
var G_ENV_VAR = {
	WWW:'',
	STATIC:'',
	BBS:'',
	UID:'',
	UNAME:'',
	MSG_NUM:'',
	VIP: '0',
	IS_CHECKED_EMAIL:'false',
	IS_CHECKED_MOBILE: 'false',
	HAS_TRADE_PASSWORD: 'false',
	IS_CHECKED_IDENTIFICATION: 'false',
	IS_CHECKED_BANKCARD: 'false'
};
</script>
<script type="text/javascript" src="../../../s/vendor/artDialog/jquery.artDialog.js" tppabs="https://xin/s/vendor/artDialog/jquery.artDialog.js"></script>
<script type="text/javascript" src="../../../s/vendor/artDialog/dialog_ex.js" tppabs="https://xin/s/vendor/artDialog/dialog_ex.js"></script>
<script type="text/javascript" src="../../js/tytabs.jquery.new.js" tppabs="https://xin/2.0/js/tytabs.jquery.new.js"></script>
<script type="text/javascript" src="../../js/jquery.imgscroll.min.js" tppabs="https://xin/2.0/js/jquery.imgscroll.min.js"></script>
<script src="../../js/jquery-webox.js" tppabs="https://xin/2.0/js/jquery-webox.js" type="text/jscript"></script>
<script type="text/javascript" src="../../js/wbox.js" tppabs="https://xin/2.0/js/wbox.js"></script>
<script type="text/javascript" src="../../js/AA.base-min.js" tppabs="https://xin/2.0/js/AA.base-min.js"></script>
<script type="text/javascript" src="../../js/XR.base.js" tppabs="https://xin/2.0/js/XR.base.js"></script>
<script type="text/javascript" src="../../js/mod/login.js" tppabs="https://xin/2.0/js/mod/login.js"></script>
<script type="text/javascript" src="../../js/mod/phone.js" tppabs="https://xin/2.0/js/mod/phone.js"></script>
<script type="text/javascript" src="../../js/rsa.js" tppabs="https://xin/2.0/js/rsa.js"></script>
<script type="text/javascript" src="../../js/common.js" tppabs="https://xin/2.0/js/common.js"></script>
<script type="text/javascript" src="../../js/api/common_api.js" tppabs="https://xin/2.0/js/api/common_api.js"></script>
<script type="text/javascript" src="../../js/api/user_api.js" tppabs="https://xin/2.0/js/api/user_api.js"></script>
<script type="text/javascript" src="../../js/address/area.js" tppabs="https://xin/2.0/js/address/area.js"></script>
<script type="text/javascript" src="../../js/address/location.js" tppabs="https://xin/2.0/js/address/location.js"></script>
<script type="text/javascript" src="../../js/www/qq_status.js" tppabs="https://xin/2.0/js/www/qq_status.js"></script>
<script type="text/javascript" src="../../js/selectivizr.js" tppabs="https://xin/2.0/js/selectivizr.js"></script>
	<script type="text/javascript" src="../../js/esw_account_jx.js" tppabs="https://xin/2.0/js/esw_account_jx.js"></script>
	<!--<script type="text/javascript" src="/store/js/jquery.cookie.js"></script>-->

<style>
.sidebar_b{ width:914px; min-height:500px;}
.sideborder{ border:1px solid #dbdbdb;}

/********************************************************************************/
.accounttab .tabs{ width:100%; background: #f5f5f5; height:30px; padding-top:6px; border-bottom:1px solid #9aabbd;}
.accounttab .tabs li{ padding:0 5px; float:left;}
.accounttab .tabs li a{ width: 88px; height: 26px; line-height: 26px; margin-top: 3px; margin-right: 9px; border: 1px solid #9aabbd; border-bottom: none; text-align: center; color: #0078b6; z-index: 2; background-color: #f8f8f8; display:block;}
.accounttab .tabs li:hover a,.accounttab .tabs li.current a{ height: 27px; line-height: 27px; margin-top: 3px; border-color: #9aabbd; font-weight:bold; color: #333333; background-color: #FFF;}
/********************************************************************************/
.settings_top{ background: #f6f6f6; padding: 10px 0;}
.settings_top dl{ width:100%; line-height:30px; clear:both;}
.settings_top dt{ float:left; padding-left:20px;}
.settings_top dd{ float:left;}
.settings_top dd .status{ width:80px; display:inline-block; vertical-align:middle;}
.settings_top dd .progress_box{ display: inline-block; width: 100px; height: 9px; font-size: 0; overflow: hidden; border: 1px solid #bfbfbf; margin-right:5px; vertical-align:middle;}
.settings_top dd .progress_box .progress_wbg{ width:50%; height: 9px; display:block; background:#90C271;}
.settings_top dd .AllIcon{ display:inline-block; vertical-align:middle; margin:0 5px 2px 0; background:url("../../images/Acc.png"/*tpa=https://xin/2.0/images/Acc.png*//*tpa=https://xin/2.0/images/Acc.png*/) no-repeat;}
.settings_top dd .status .icon01{ width:18px; height:12px; background-position:0px 0px;}
.settings_top dd .status .icon02{ width:22px; height:14px; background-position:0px -68px;}
.settings_top dd .status .icon03{ width:13px; height:18px; background-position:0px -120px;}
.settings_top dd .status .icon04{ width:20px; height:14px; background-position:0px -148px;}

.settings_top dd .sgray .icon01{ width:18px; height:12px; background-position:0px -22px;}
.settings_top dd .sgray .icon02{ width:22px; height:14px; background-position:0px -44px;}
.settings_top dd .sgray .icon03{ width:13px; height:18px; background-position:0px -92px;}
.settings_top dd .sgray .icon04{ width:20px; height:14px; background-position:0px -172px;}

.settings_list{ width:100%; padding:15px 0 0 0; line-height:26px; position:relative;}
.settings_list h2{ background-color: #f6f6f6; height: 28px; line-height: 28px; padding: 0 10px; font-weight: bold; font-size: 13px;}
.settings_list .settings_font{ width:640px; display:block; padding:10px 25px;}
.settings_list .settings_font .msg{ color:#999; line-height:20px; padding-top:10px;}
.settings_list .setingssub{ position:absolute; right:85px; bottom:5px; width:100px; height:32px; line-height:32px; font-size:14px;}
.settings_list .setingssub01{ position:absolute; right:105px; bottom:5px; width:100px; height:32px; line-height:32px; font-size:14px;}
.settings_list .setingsbank{ bottom:30px;}
.settings_list .paddingleft{ padding-left:15px;}

/********************************************************************************/
.settings_password{ padding:10px 0;}
.settings_password h2{ background: #fef3d7; height: 40px; line-height: 40px; padding: 0 15px; font-weight: normal;}
.settings_password dl{ width:100%; padding-top:15px; clear:both; line-height:30px;}
.settings_password dt{ width:90px; text-align:right; float:left;}
.settings_password dd{ float:left;}
.settings_password dd .sub01{ width:100px; height:29px; line-height:29px; border-bottom-width:2px; font-size:13px; margin-left:10px;}

.settings_password .msg{ padding:20px 0 0 30px; line-height:40px;}


.unbindqqdialog{ width:100%;}
.unbindqqdialog.titlecuss{ text-align:center; padding:38px 0 20px 0; font-size:15px;}
.unbindqqdialog.cussfont{width:300px;line-height:24px;margin:0 auto;font-size:medium;}
.unbindqqdialog.cusssub{ display:block; text-align:center; padding:40px 0 0 0;}
</style>
</head>

<!--<script>-->
	<!--var cookie = $.cookie("createAccountSuccessReturn")!==undefined?$.cookie("createAccountSuccessReturn"):0;-->
	<!--if(cookie==1){//1为开户设置密码成功之后返回-->
        <!--$.cookie("createAccountSuccessReturn",2);//2为开户成功-->
	    <!--window.location.href("esw_certification.html");-->
	<!--}-->
<!--</script>-->
<body>
<script type="text/javascript">
$(function(){
    // 固定导航
	$(document).scroll(function(){
		t=$(document).scrollTop();
		if(t>=0){
			$("#hmenu_nav").removeClass("h_por").css("top","78px;");
			}
		if(t>78){
			$("#hmenu_nav").addClass("h_por").css("top","0px;");
			}
		});
});
</script>
<div class="hmenu_nav">
  <div class="main PositionR">
    <div class="logo left PositionR"><a href="../../../index.htm" tppabs="https://xin/index.shtml"><img src="../../images/logo.gif" tppabs="https://xin/2.0/images/logo.gif" /></a><a href="../about/shareholder.shtml.htm" tppabs="https://xin/2.0/views/about/shareholder.shtml" class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="account_index.shtml.htm" tppabs="https://xin/2.0/views/account/account_index.shtml" class="f-my" id="nav_my">我的账户</a> <a id="top_exit" href="javascript:AA.RapidLogin.loginout();" class="f_exit" style="display:none;">退出</a> <span class="h-login-reg h-login" style="display: none;"><i></i><a href="../../login2.0.html" tppabs="https://xin/2.0/login2.0.html" class="flogin">登录</a><a href="register4.0.shtml.htm" tppabs="https://xin/2.0/views/account/register4.0.shtml" class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="../../../index.htm" tppabs="https://xin/index.shtml" id="nav_index">首页</a></li>
        <li><a href="../../../invest.shtml.htm" tppabs="https://xin/invest.shtml" id="nav_invest">投资<i class="arrow"></i></a>
        <ul>
        <li><a href="../../calculator.html#finvest" tppabs="https://xin/2.0/calculator.html#finvest" target="_blank">投资计算器</a></li>
        <li><a href="finacing.html" id="finacing" >我要融资</a></li>
        </ul>
        </li>
        <li><a href="../../action/xr_huahua/huahua.shtml.htm" tppabs="https://xin/2.0/action/xr_huahua/huahua.shtml" id="nav_huahua">信融花花<i class="arrow"></i><b class="hh_icon"><img src="../../images/hh_icon.png" tppabs="https://xin/2.0/images/hh_icon.png" /></b></a>
          <ul>
          	<li><a href="../../action/xr_huahua/huahua.shtml.htm" tppabs="https://xin/2.0/action/xr_huahua/huahua.shtml" target="_blank">我要借款</a></li>
            <li><a href="../../calculator.html" tppabs="https://xin/2.0/calculator.html" target="_blank">借款计算器</a></li>
          </ul>
        </li>
        <li><a href="../about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="../about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" target="_blank">投资帮助</a></li>
          	<li><a href="../about/risk.shtml.htm" tppabs="https://xin/2.0/views/about/risk.shtml" target="_blank">风险控制</a></li>
            <li><a href="../about/laws_regulations.shtml.htm#navLaws" tppabs="https://xin/2.0/views/about/laws_regulations.shtml#navLaws" target="_blank">法律法规</a></li>
          </ul>
        </li>
        <li><a href="../about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="../about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" id="nav_about_index">公司简介</a></li>
            <li><a href="../about/team.shtml.htm" tppabs="https://xin/2.0/views/about/team.shtml">团队介绍</a></li>
            <li><a href="../about/service_data.shtml.htm" tppabs="https://xin/2.0/views/about/service_data.shtml">运营数据</a></li>
            <li><a href="../about/partner.shtml.htm" tppabs="https://xin/2.0/views/about/partner.shtml">合作机构</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="../../vip.html" tppabs="https://xin/2.0/vip.html" id="nav_vip">VIP特权</a></div>
    </div>
  </div>
</div>
<!--nav-->
<style type="text/css">
.fengxian_dialog{ width:469px; height:315px; background:#ffffff; -webkit-border-radius:5px; -moz-border-radius:5px; border-radius:5px;}
.fengxian_dialog h1{ height:50px; line-height:50px; background:#ececec; color:#2c2c2c; font-size:18px; font-weight:normal; padding:0 10px; border-top-left-radius:5px; border-top-right-radius:5px; position:relative;}
.fengxian_dialog h1 .close{ position:absolute; right:10px; top:0px; font-family:"宋体"; font-size:30px; color:#aeaeae; font-weight:normal; text-decoration:none;}
.fengxian_dialog .fx_font{ padding:20px 30px; font-size:18px; line-height:30px;}
.fengxian_dialog .fx_sub{ text-align:center; line-height:36px;}
.fengxian_dialog .fx_sub .sub02{ font-size:18px; width:166px; height:45px; line-height:45px;}
.fengxian_dialog .fx_sub p a{ color:#a1a1a1; font-size:15px;}
</style>
<script type="text/javascript" src="../../js/wbox.js" tppabs="https://xin/2.0/js/wbox.js"></script>
<link rel="stylesheet" href="../../css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css">
<!--风险测评-->
<div id="fxpc_dialog" style="display: none;">
  <div class="fengxian_dialog">
    <h1>温馨提示<a href="javascript:void(0)" class="close" id="close">×</a></h1>
    <div class="fx_font"> 尊敬的用户，为了帮助您更好的了解自己的风险承受能力，请您花30秒的时间完成10道风险测试题。 网贷非存款，投资需谨慎，是否立即进行风险测评？ </div>
    <div class="fx_sub"><a href="javascript:void(0)" class="sub02" id="goToAnswer">立即测评</a>
      <p><a href="javascript:void(0)" id="afterAnswer">稍后再说</a></p>
    </div>
  </div>
</div>
<script>
	
	(function() {
	
	var channel=location.href;

	var index=channel.lastIndexOf("/");
	
	var index1=channel.lastIndexOf(".");

	if(index>0){
		channel=channel.substring(index+1,index1);

		if(channel==".com/"||channel==".com"){
			$('#nav_index').parent().attr("class","cur");
		}else if(channel=="xincunbao"){
			$('#nav_my').addClass("cur");
		}else if(channel=="invest_help"||channel=="risk"||channel=="security"){
			$('#nav_invest_help').parent().attr("class","cur");			
		}else if(channel=="help"||channel=="guide1"||channel=="guide2"||channel=="guide3"||channel=="guide4"){
			$('#nav_invest_help').parent().attr("class","cur");
			$('#nav_help').attr("class","cur");		
		}else if(channel=="xr_call"){
			$('#nav_duoduo').parent().attr("class","cur");
		}else if(channel=="vip"){
			$('#nav_vip').attr("class","cur");
		}else{
			$('#nav_'+channel).parent().attr("class","cur");	
		}
		
	}
})();

$(document).ready(function(){
	$(".h-login-reg a").mouseenter(function(){
		if($(this).is(".flogin"))
			{
				$(".h-login-reg").addClass("h-login");
				$(".h-login-reg").removeClass("h-reg");
			}
			else{
				$(".h-login-reg").addClass("h-reg");
				$(".h-login-reg").removeClass("h-login");
				}
		});
	var isAnswered=sessionStorage.getItem('afterAnswer')||null;
	if (location.href.indexOf('goAnswer=true') < 0) {
		if (isAnswered =='null') {
			$.ajax({
				url:'../../../v2/login/in_session_data.jso'/*tpa=https://xin/v2/login/in_session_data.jso*/,
			    type:'GET' ,
			    dataType:'json',
			    success:function (result) {
					if(result.state==0){
						if (document.cookie.substring(document.cookie.indexOf("isAnswer=")+9,document.cookie.indexOf("isAnswer=")+10) =="N") {
							showFXPCdialog();
							
							if (location.href.indexOf("account_settings.shtml")>-1) {
								$('#wBox #goToAnswer').unbind('click').bind('click',function(){
						        	$('#tp2').click();
						        })
							}
						}
					}
				}
			});
		}
	}
	

	function showFXPCdialog(){
		wBox = $('#fxpc_dialog').wBox({
                noTitle:true,
                top:5,
                html: $('#fxpc_dialog').html()
            });
        wBox.showBox(); 
        $('#wBox #afterAnswer').bind('click',function(){
        	sessionStorage.setItem('afterAnswer',true);
        	wBox.close();
        });
        $('#wBox #goToAnswer').unbind('click').bind('click',function(){
        	location.href="account_settings.shtml-goAnswer=true.htm"/*tpa=https://xin/2.0/views/account/account_settings.shtml?goAnswer=true*/;
        });
        $('#wBox #close').unbind('click').bind('click',function(){
        	sessionStorage.setItem('afterAnswer',true);
        	wBox.close();
        })

	}
});

</script> 

<div class="LineBorder"></div>
<!--banner end-->
<div class="black15"></div>
<!--center-->
<div class="main">
	<!--未设置存管交易密码弹层-->
	<div id="wbox_cgpsw" style="width:518px;display:none">
		<div class="esw_dialog">
			<div class="password_font">
				<dl>
					<dt><img src="../../images/esw04.png" tppabs="https://xin/2.0/images/esw04.png" /></dt>
					<dd>您未设置存管交易密码，暂不能使用该功能，请先<span class="blue">设置</span>存管交易密码</dd>
					<div class="clear"></div>
				</dl>
				<a href="javascript:AccountSettings.setEswPassword();" class="sub02">前往设置</a> </div>
		</div>
		<div class="black20"></div>
	</div>

	<div class="AccountLeft left">
  <ul class="AccountNav">
  <li><a href="account_index.shtml.htm" tppabs="https://xin/2.0/views/account/account_index.shtml">账户首页</a></li>
  <li><a href="../../xincunbao.shtml.htm" tppabs="https://xin/2.0/xincunbao.shtml">信 存 宝<i class="fontr">R</i></a></li>
  <li><a href="../../../my/invest.htm" tppabs="https://xin/my/invest">投资管理</a></li>
  <li><a href="../huahua/huahua.html" tppabs="https://xin/2.0/views/huahua/huahua.html">信融花花</a></li>
  <li style="display:none;"><a href="../../../my/recharge.htm" tppabs="https://xin/my/recharge"><i class="AllIcon Icon03"></i>充值提现</a></li>
  <li><a href="../../../my/consume.htm" tppabs="https://xin/my/consume">收支查询</a></li>
  <li class="liFoot"><a href="account_settings.shtml.htm" tppabs="https://xin/2.0/views/account/account_settings.shtml">账户设置</a></li>
  <li><a href="../../../my/msg.htm" tppabs="https://xin/my/msg">我的消息</a></li>
  </ul>
</div>

<script type="text/javascript">
$(document).ready(function(){
	var url = window.location.pathname;
	
	if(url=='/2.0/xincunbao.shtml'){
		url='/my';
	}
	
	if(url=='/2.0/views/call/call_detail.shtml'){
		url='/2.0/views/call/call.shtml';
	}
	
	$(".AccountLeft .AccountNav li").each(function(){
		var url = window.location.pathname;
		 var li_obj = $(this);
		 var a_obj = li_obj.find('a');
		 if(a_obj.attr('href')==url){
			 a_obj.addClass('cur');
		 }else{
			 a_obj.removeClass('cur');
		 }
	});
	
});
</script>
<!--nav end-->
<div class="sidebar_b right accounttab" id="tabsholder">
<ul class="tabs">
<li id="tab1"><a href="javascript:void(0)">账户信息</a></li>
<li id="tab2"><a href="javascript:void(0)">密码管理</a></li>


</ul>
<div class="contents">
<div class="black10"></div>
<div id="content1" class="tabscontent" style="display: none;">
<div class="settings_top">
<dl>
<dt>信融财富账户名：</dt>
<dd><b id="user_name">--</b></dd>
<div class="clear"></div>
</dl>
<!-- add sundy zhou 风险测评2016-5-16 -->
<dl>
<dt>风险测评类型：</dt>
<dd ><b id="risk_type">--</b></dd>
<span id="to_risk" style="display: none"><a href="javascript:void(0)" class="blue" id="do_risk"><span id="tp2" style="margin-left:10px">点击进行自评</span></a></span>
<div class="clear"></div>
</dl>
<dl>
<dt>信息完整度：</dt>
<dd><span class="progress_box"><span id="completion" class="progress_wbg" style="width: 0%;"></span></span> <font id="completion_val">0</font>%</dd>
<div class="clear"></div>
</dl>
<dl>
<dt>认证状态：</dt>
<dd><span id="auth_email" class="status sgray"><i class="AllIcon icon01" title="邮箱"></i><span class="red">未认证</span></span><span id="auth_identity" class="status sgray"><i class="AllIcon icon02" title="身份证"></i><span class="red">未认证</span></span><span id="auth_mobile" class="status sgray"><i class="AllIcon icon03" title="手机"></i><span class="red">未认证</span></span>
<span id="auth_bankcard" class="status sgray"><a href="../../../my/rechargec.htm" tppabs="https://xin/my/rechargec"><i class="AllIcon icon04" title="银行卡"></i><span class="red">未认证</span></a></span>
</dd>
<div class="clear"></div>
</dl>
</div>
<div class="settings_list">
<h2>手机认证</h2>
<span class="settings_font">
手机号码：<span id="mobile">未填写</span> <a href="javascript:void(0)" class="sub02 setingssub" id="do_phone">修改号码</a>
</span>
</div>
<!--<div class="settings_list">
<h2>实名认证</h2>
<span class="settings_font">
<p>真实姓名：<span class="red">未填写</span></p>
<p>身份证号码：<span class="red">未填写</span></p>
<p class="msg"><i class="AllIcon iconI"></i>为了确定您的电子合同主体，请先完成实名认证再投资。<br />
　　前3次免费认证，超过3次每次收取5元手续费。</p>
<a href="javascript:void(0)" class="sub02 setingssub" id="do_realname">立即认证</a>
</span>
</div>-->
<!--<div class="settings_list">
<h2>银行卡认证</h2>
<span class="settings_font">
<p>开户银行：<span class="red">未填写</span></p>
<p>银行所在地：<span class="red">未填写</span></p>
<p>支行名称：<span class="red">未填写</span></p>
<p>银行卡号：<span class="red">未填写</span></p>
<p class="msg" style="display:none;"><i class="AllIcon iconI"></i>账户资金<span class="red">只能提现至已认证的银行卡号</span>，提现前请先完成银行卡认证。<br />
　　前3次免费认证，超过3次每次收取3元手续费。</p>
<p class="msg"><i class="AllIcon iconI"></i>银行卡认证当前状态： <span class="red">待打款</span><br />　　申请已提交，请等待系统打款（1~3个工作日）。您可以：<a href="javascript:void(0)" class="blue paddingleft">充值</a><a href="javascript:void(0)" class="blue paddingleft">投资</a></p>
<p class="msg" style="display:none;"><i class="AllIcon iconI"></i>银行卡认证当前状态： <span class="red">已打款</span><br />　　提示：收到款项后请及时进行金额确认，如在3个工作日内未收到款项，可能卡信息有误，请重新认证。</p>
<a href="javascript:void(0)" class="sub02 setingssub setingsbank" id="do_bank">立即认证</a> <a href="javascript:void(0)" class="sub01 setingssub01 setingsbank">重新认证</a>
</span>
</div>-->
<div class="settings_list">
<h2>银行卡身份认证</h2>
<span class="settings_font">
<span id="id_view_none">
<p>真实姓名：<span class="red">未填写</span></p>
<p>身份证号码：<span class="red">未填写</span></p>
</span>
<span id="id_view" style="display: none;">
<p>身份证：<span id="realName"></span>（身份证号： <span id="idcard"></span>）</p>
</span>
<span id="bank_view_none">
<p>开户银行：<span class="red">未填写</span></p>
<p>银行所在地：<span class="red">未填写</span></p>
<p>支行名称：<span class="red">未填写</span></p>
<p>银行卡号：<span class="red">未填写</span></p>
</span>
<span id="bank_view" style="display: none;">
<p>银行卡： <span id="bankName"></span> （<span id="bankNo"></span>）</p>
<p>开户行所在地：<span id="provinceName"></span>，<span id="cityName"></span>，<span id="districtName"></span></p>
<p>支行名称：<span id="subBranchName"></span></p>
<p id="bank_check_prompt" class="msg"><span style="color:#444"><i class="AllIcon iconI"></i>银行卡未认证可通过<a href="../../../my/rechargec.htm" tppabs="https://xin/my/rechargec"><span class="red">快捷支付充值</span></a>或<a href="../../../my/deposit.htm" tppabs="https://xin/my/deposit"><span class="red">提现</span></a>认证成功。</span></p>
</span>
<!--
<p id="bank_msg_2" class="msg" style="display:none;"><i class="AllIcon iconI"></i>银行卡认证当前状态： <span class="red">待打款</span><br />　　申请已提交，请等待系统打款（1~3个工作日）。您可以：<a href="javascript:void(0)" class="blue paddingleft">充值</a><a href="javascript:void(0)" class="blue paddingleft">投资</a></p>
<p id="bank_msg_3" class="msg" style="display:none;"><i class="AllIcon iconI"></i>银行卡认证当前状态： <span class="red">已打款</span><br />　　提示：收到款项后请及时进行金额确认，如在3个工作日内未收到款项，可能卡信息有误，请重新认证。</p>
<p id="bank_msg_1" class="msg"><i class="AllIcon iconI"></i>账户资金<span class="red">只能提现至已认证的银行卡号</span>，提现前请先完成银行卡身份认证。<br />
　　前3次免费认证，超过3次每次收取3元手续费。</p>-->
<p class="msg" id="bank_msg_4"><i class="AllIcon iconI"></i>请正确填写真实姓名和身份证号。账户资金将只能提现至对应的银行账号。<br />
　　银行卡提现仅支持借记卡，不支持信用卡和存折及邮政储蓄卡。
</p>
<a href="javascript:void(0);" class="sub02 setingssub setingsbank" id="do_bank" style="display: none;">立即认证</a> <a href="javascript:void(0)" class="sub01 setingssub01 setingsbank" id="up_bank" style="display: none;">重新认证</a>
</span>
</div>
<!-- <div class="settings_list">
<h2>存管认证</h2>
<span class="settings_font">
<p>存管认证状态：<span id="esw_state_view_none" class="red">未认证</span><span id="esw_state_view" style="display: none;">已认证 <i class="AllIcon icongou"></i></span>
</p>
<div class="clear"></div>
<a href="javascript:void(0)" class="sub02 setingssub" id="do_esw_create_btn">立即认证</a>
</span>
</div> -->
<div class="settings_list">
<h2>邮箱认证</h2>
<span class="settings_font">
邮箱地址：<span id="email" class="red">未填写</span>
<p class="msg" id="email_msg_1"><i class="AllIcon iconI"></i>您的邮箱尚未经过验证！ 投资前请先完成验证，以便接收资金变动通知。</p>
<a href="javascript:void(0)" class="sub02 setingssub" id="up_email" style="display: none;">修改邮箱</a>
<a href="javascript:void(0)" class="sub02 setingssub" id="do_email">立即验证</a>
</span>
</div>
<div class="settings_list">
<h2>紧急联系人</h2>
<span class="settings_font">
姓名：<span id="noemergencyInfo_view" >
<span class="red">未填写</span>
<p class="msg" id="emergency_tip"><i class="AllIcon iconI"></i>为方便我们在紧急情况下，能够联系至与你相关的人。</p>
</span>
<span id="hasemergencyInfo_view"  style="display:none;">
<span id="emergencyInfo"></span> <i class="AllIcon icongou"></i>
</span>
<a href="javascript:void(0)" class="sub02 setingssub" id="up_emergency" style="display: none;">修改联系人</a>
<a href="javascript:void(0)" class="sub02 setingssub" id="do_emergency">立即填写</a>
</span>
</div>
<div class="settings_list">
<h2>收货地址</h2>
<span class="settings_font">
<span id="address_view_none">
<p>收件信息：<span class="red">未填写</span></p>
</span>
<span id="address_view" style="display:none;">
<p>收件信息：<span id="show_address">--</span> <i class="AllIcon icongou"></i></p>
</span>
<p id="address_msg_1" class="msg"><i class="AllIcon iconI"></i>为方便我们给您寄送礼品，请留下您的收件地址。</p>
<div class="clear"></div>
<a href="javascript:void(0)" class="sub02 setingssub" id="do_address">立即填写</a>
</span>
</div>
</div>
<div id="content2" class="tabscontent settings_password" style="display: none;">
<h2><span class="red">安全提醒：</span> 请妥善保管您的密码！信融财富工作人员不会以任何理由向您索取密码。</h2>
<dl>
<dt>登录密码：</dt>
<dd><span class="gray" >已设置</span> <a href="javascript:void(0)" class="sub03" id="do_password">修改登录密码</a></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>信融交易密码：</dt>
<dd><span class="gray" id="safe_pwd_state">已设置</span> <a href="javascript:void(0)" class="sub03" id="do_safe_password">修改交易密码</a>  <a href="back_password.shtml-tab=2.htm" tppabs="https://xin/2.0/views/account/back_password.shtml?tab=2" class="sub03" id="reset_safePwd">重置交易密码</a></dd>
<div class="clear"></div>
</dl>
<span style="display:none" id="noBind">
<dl>
<dt>QQ登录：</dt>
<dd><span class="gray">已绑定</span> <a href="javascript:showdiv();" class="sub03" title="解绑后不能使用QQ号登录账户">解除绑定</a></dd>
<div class="clear"></div>
</dl>
</span>
<span style="display:none" id="bindqq" >
<dl>
<dt>QQ登录：</dt>
<dd><span class="gray">未绑定</span> <a href="javascript:bind();" class="sub03" title="绑定后可以通过QQ号快速登录账户">立即绑定</a></dd>
<div class="clear"></div>
</dl>
</span>
	<dl id="esw_password_set" style="display: none;">
		<dt>存管交易密码：</dt>
		<dd><span class="gray">未设置</span> <a href="javascript:void(0)" class="sub03">立刻设置</a></dd>
		<div class="clear"></div>
	</dl>
<p class="msg"><i class="AllIcon iconI"></i>交易密码默认为登录密码，请尽快进行修改。</p>
</div>
<div id="content3" class="tabscontent content" style="display: none;">

		<!--头部切换菜单 end-->
		<div class="detail block">
			<div class="procedure item">
				<span><i class="square">1</i><br/><span class="title">设置自动投资条件</span></span>
				<span class="line"></span>
				<span><i class="square">2</i><br/><span class="title">等待投资项目</span></span>
				<span class="line"></span>
				<span><i class="square">3</i><br/><span class="title">自动投资成功</span></span>
			</div>
			<div class="moneyLimit item">
				<div class="itemTitle">金额限制</div>
				<!--
                    账户可用余额	#availMoney
                -->
				<span><span class="itemName">账户可用金额&nbsp;:</span><span id="availMoney" class="orange">--</span>元<span class="tips">(&nbsp;不含信存宝&nbsp;)</span></span>
				<span><span class="itemName">保留金额&nbsp;:</span>
					<!--
                        单笔投资金额选择
                    -->
													<span class="labelCon"><label id="investAll"><input id="investAllRadio" type="radio" name="investMoney" value="" checked style="display: none;"><i><b></b></i><span>余额全投</span></label></span>
													<span class="labelCon"><label id="investCus"><input id="investCusRadio" type="radio" name="investMoney" value=""><i><b></b></i><span>自定义</span></label></span>
					</span>
				<!--
                    自定义保留金额	#customMoney
                -->
				<span id="customMoneyBox" class="customMoneyBox"><span class="itemName">自定义保留金额≥&nbsp;:</span><input type="text" name="customMoney" placeholder="" id="customMoney" /><span class="unit">元</span></span>
				<!--
                    保留金额设置	#reservedMoney
                -->
				<span id="investMoneyBox"><span class="itemName">单笔投资金额≥&nbsp;:</span><input type="text" name="reservedMoney" placeholder="100元起投，需100的整数倍" id="invest_money" /><span class="unit">元</span></span>
			</div>
			<div class="projectLimit item">
				<div class="itemTitle">项目限制</div>
				<span><span class="itemName">项目类型&nbsp;:</span>
					<!--
                        项目类型
                    -->
													<span class="labelCon"><label><input id="lt_1" type="checkbox" name="projectType" value="1"/><i><b></b></i><span>信·优企贷/无忧贷</span></label></span>
													<span class="labelCon"><label><input id="lt_2" type="checkbox" name="projectType" value="2"/><i><b></b></i><span>品牌合作</span></label></span>
													<span class="labelCon"><label><input id="lt_3" type="checkbox" name="projectType" value="3"/><i><b></b></i><span>消费贷</span></label></span>
					</span>
				<!--
                    年化收益	#profitRate
                -->
				<span><span class="itemName">年化收益≥&nbsp;:</span><input type="text" name="profitRate" placeholder="" id="rate" /><span class="unit">%</span></span>
				<span><span class="itemName">回款方式&nbsp;:</span>
					<!--
                        回款方式
                    -->
													<span class="labelCon"><label><input id="rt_1" type="checkbox" name="returnType" value="1"/><i><b></b></i><span>到期一次性回款</span></label></span>
													<span class="labelCon"><label><input id="rt_2" type="checkbox" name="returnType" value="2"/><i><b></b></i><span>每月等额本息</span></label></span>
													<span class="labelCon"><label><input id="rt_4" type="checkbox" name="returnType" value="4"/><i><b></b></i><span>按月付息到期还本</span></label></span>
					</span>
				<span><span class="itemName">投资期限&nbsp;:</span>
					<!--
                        投资期限开始	#deadlineBegin
                        投资期限结束	#deadlineEnd
                    -->
												<select id="deadline_begin">
													<option value="0">0个月</option>
													<option value="1" selected="selected">1个月</option>
													<option value="2">2个月</option>
													<option value="3">3个月</option>
													<option value="4">4个月</option>
													<option value="5">5个月</option>
													<option value="6">6个月</option>
													<option value="7">7个月</option>
													<option value="8">8个月</option>
													<option value="9">9个月</option>
													<option value="10">10个月</option>
													<option value="11">11个月</option>
													<option value="12">12个月</option>
													<option value="13">13个月</option>
													<option value="14">14个月</option>
													<option value="15">15个月</option>
													<option value="16">16个月</option>
													<option value="17">17个月</option>
													<option value="18">18个月</option>
													<option value="19">19个月</option>
													<option value="20">20个月</option>
													<option value="21">21个月</option>
													<option value="22">22个月</option>
													<option value="23">23个月</option>
													<option value="24">24个月</option>
													<option value="36">36个月</option>
													<option value="48">48个月</option>
													<option value="60">60个月</option>
												</select>
												<span class="separate">至</span>
												<select id="deadline_end">
													<option value="0">0个月</option>
													<option value="1">1个月</option>
													<option value="2">2个月</option>
													<option value="3">3个月</option>
													<option value="4">4个月</option>
													<option value="5">5个月</option>
													<option value="6">6个月</option>
													<option value="7">7个月</option>
													<option value="8">8个月</option>
													<option value="9">9个月</option>
													<option value="10">10个月</option>
													<option value="11">11个月</option>
													<option value="12">12个月</option>
													<option value="13">13个月</option>
													<option value="14">14个月</option>
													<option value="15">15个月</option>
													<option value="16">16个月</option>
													<option value="17">17个月</option>
													<option value="18">18个月</option>
													<option value="19">19个月</option>
													<option value="20">20个月</option>
													<option value="21">21个月</option>
													<option value="22">22个月</option>
													<option value="23">23个月</option>
													<option value="24">24个月</option>
													<option value="36">36个月</option>
													<option value="48">48个月</option>
													<option value="60" selected="selected">60个月</option>
												</select>
					</span>
			</div>
			<div class="curStatus item">
				<div class="itemTitle">当前状态</div>
				<!--
                    优先级	#investPriority
                -->
				<span><span class="itemName">优先级&nbsp;:</span><span>您的自动投资优先级序列号为&nbsp;&nbsp;</span><span class="orange" id="rank">努力计算中......<span class="orange">！</span></span><span class="tips">（自动投资排位较后时，建议增加手动投资）</span></span>
				<!--
                    协议	#agreementCheck
                -->
				<span><span class="itemName">自动投资须知&nbsp;:</span><input type="checkbox" id="agreementCheck" checked="checked" /><span class="agreementLine">我已阅读同意并签署<a class="blue" href="../about/autoinvest_xieyi.shtml.htm" tppabs="https://xin/2.0/views/about/autoinvest_xieyi.shtml" target="_blank">《信融财富平台自动投资授权协议》</a></span></span>
				<div id="error" class="red" style="padding-left: 23px;"></div>
				<!--
                    保存、关闭按钮	#startBtn #closeBtn
                -->
				<span class="btnLine"><a href="javascript:void(0)" id="startBtn">启动自动投资</a><a href="javascript:void(0)" id="closeBtn" class="closeBtn invalid">关闭自动投资</a></span>
			</div>
			<div class="rule item">
				<div class="itemTitle">规则说明</div>
				<div class="tableCon">
					<table cellpadding="0" cellspacing="0" border="1px" bordercolor="#eaeaeb">
						<thead>
						<tr>
							<th>特权项</th><th>普通用户</th><th>VIP1</th><th>VIP2</th><th>VIP3</th><th>VIP4</th><th>VIP5</th><th>VIP6</th><th>VIP7</th><th>VIP8</th><th>VIP9</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>优先权</td><td>低于VIP1</td><td colspan="9">高VIP等级优先；同VIP等级高成长值优先；同成长值注册较早者优先</td>
						</tr>
						<tr>
							<td>启动时间</td><td>5分钟</td><td>120秒</td><td>60秒</td><td>45秒</td><td>30秒</td><td>20秒</td><td>15秒</td><td>10秒</td><td>5秒</td><td>0秒</td>
						</tr>
						</tbody>
					</table>
				</div>
				<p class="tips">
					注&nbsp;:<br/>
					1.设定条件，无需登录即可自动完成投资，省时省心；<br/>
					2.普通用户按近1年的投资额进行自助投资排位；<br/>
					3.系统会帮你同时尝试投资所勾选的各个期限项目，以最终投资成功为准。<br/>
					4.受优先权、启动时间和手动快速投资影响，开启自动投资不能确保100%投资成功。
				</p>
			</div>
			<!--</div>-->
		</div>
		<!--content end-->

</div>
</div>
</div>
<div class="black25"></div>
</div>
<!--center end--> 
<style> 
.cp-box{ border:1px solid #0078b5; background:#fff; width:540px;}
.cp-box h1{height: 30px; line-height: 30px; padding: 0 28px 0 10px;background: #3d8fca; color:#fff; font-size:14px;}
.cp-box h2{ padding:15px; font-size:15px; font-weight:normal;}
 
.cp-box .cp-list{ padding:15px 20px; font-size:13px; line-height:30px;}
.cp-box .cp-list h3{ font-size:14px; font-weight:normal;}
.cp-box .cp-list ul{ padding:0 0 5px 0;}
.cp-box .cp-list .cp-sub{ text-align:center;}
.cp-box .cp-list .cp-sub .sub02,.cp-box .cp-list .cp-sub .sub03{ width:120px; height:36px; line-height:36px;}

.cp-ht{ width:478px; height:2px; background:#a09f9f; margin:0 auto; margin-top:60px; position:relative;}
.cp-ht ul{ width:510px; position:absolute; left:0px; top:-8px; margin-left:-16px;}
.cp-ht ul li{ width:80px; text-align:center; padding-right:27px; float:left; position:relative;}
.cp-ht ul li.t-p{ padding-right:0px;}
.cp-ht ul li i{ width:15px; height:15px; background:#a2a1a1; border:2px solid #fff; border-radius:50%; display:inline-block;}
.cp-ht ul li h3{ font-size:14px; color:#a2a1a1; font-weight:normal; height:28px; line-height:28px;}
.cp-ht ul li.cur{ margin-top:-32px;}
.cp-ht ul li.cur i{ width:80px; height:80px; background:#ff6600; box-shadow:1px 4px 1px #c7560b inset;}
.cp-ht ul li.cur h3{ width:80px; color:#fff; position:absolute; left:0px; top:30px;}
</style>

<div id="cp-box" style="display: none">
<div class="cp-box">
<h2>* 以下测评，帮助您更好地了解自己的风险承受能力</h2>
<div class="cp-list" id="cp-list_1" style="width: 550px" class="dialog_wbox dialog_settings">
<h3>1、您的年龄是？</h3>
<ul>
<li><label><input name="radio_1" type="radio" value="A" /> A. 60岁以上</label></li>
<li><label><input name="radio_1" type="radio" value="B" /> B. 50-60</label></li>
<li><label><input name="radio_1" type="radio" value="C" /> C. 30-49</label></li>
<li><label><input name="radio_1" type="radio" value="D" /> D. 18-29</label></li>
</ul>
<span id="tp-cp-1" class="red"></span>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="risk_next_captcha_1">下一题</a></div>
</div>

<div class="cp-list" id="cp-list_2" style="display: none">
<h3>2、以下哪项最能说明您的投资经验？</h3>
<ul>
<li><label><input name="radio_2" type="radio" value="A" /> A. 除存款、国债外，我几乎不投资其他金融产品</label></li>
<li><label><input name="radio_2" type="radio" value="B" /> B. 大部分投资于存款、国债等，较少投资于股票、基金等风险产品</label></li>
<li><label><input name="radio_2" type="radio" value="C" /> C. 资产均衡地分布于存款、国债、银行理财产品、信托产品、股票、基金等</label></li>
<li><label><input name="radio_2" type="radio" value="D" /> D. 大部分投资于股票、基金、外汇、金融衍生品、海外投资产品等高风险产品，较少投资于存款、国债</label></li>
</ul>
<span id="tp-cp-2" class="red"></span>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="risk_back_captcha_2">上一题</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="sub02" id="risk_next_captcha_2">下一题</a></div>
</div>

<div class="cp-list" id="cp-list_3" style="display: none">
<h3>3、例如您预计有一项投资可能会有较大的收益，可是手中却没有足够的资金，您是否会对外融资？</h3>
<ul>
<li><label><input name="radio_3" type="radio" value="A" /> A. 肯定不会</label></li>
<li><label><input name="radio_3" type="radio" value="B" /> B. 可能不会</label></li>
<li><label><input name="radio_3" type="radio" value="C" /> C. 可能会</label></li>
<li><label><input name="radio_3" type="radio" value="D" /> D. 肯定会</label></li>
</ul>
<span id="tp-cp-3" class="red"></span>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="risk_back_captcha_3">上一题</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="sub02" id="risk_next_captcha_3">下一题</a></div>
</div>

<div class="cp-list" id="cp-list_4" style="display: none">
<h3>4、如果需要把大量现金放在口袋里一整天，您是否感到不安:</h3>
<ul>
<li><label><input name="radio_4" type="radio" value="A" /> A. 非常不安</label></li>
<li><label><input name="radio_4" type="radio" value="B" /> B. 会有点不安</label></li>
<li><label><input name="radio_4" type="radio" value="C" /> C. 不会</label></li>
<li><label><input name="radio_4" type="radio" value="D" /> D. 绝对不会不安，心安理得</label></li>
</ul>
<span id="tp-cp-4" class="red"></span>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="risk_back_captcha_4">上一题</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="sub02" id="risk_next_captcha_4">下一题</a></div>
</div>

<div class="cp-list" id="cp-list_5" style="display: none">
<h3>5、因为一些原因，您的驾照在未来的三天无法使用，您将：</h3>
<ul>
<li><label><input name="radio_5" type="radio" value="A" /> A. 搭朋友便车</label></li>
<li><label><input name="radio_5" type="radio" value="B" /> B. 白天不开，晚上交警少的时候开</label></li>
<li><label><input name="radio_5" type="radio" value="C" /> C. 小心点开车就是了</label></li>
<li><label><input name="radio_5" type="radio" value="D" /> D. 开玩笑，我一直都是无照驾驶的</label></li>
</ul>
<span id="tp-cp-5" class="red"></span>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="risk_back_captcha_5">上一题</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="sub02" id="risk_next_captcha_5">下一题</a></div>
</div>


<div class="cp-list" id="cp-list_6" style="display: none">
<h3>6、在海滨，您是否经常不小心游出安全区？</h3>
<ul>
<li><label><input name="radio_6" type="radio" value="A" /> A. 绝对不会</label></li>
<li><label><input name="radio_6" type="radio" value="B" /> B. 很少这样，太危险了</label></li>
<li><label><input name="radio_6" type="radio" value="C" /> C.这样也没什么大不了的</label></li>
<li><label><input name="radio_6" type="radio" value="D" /> D. 经常这样，无视安全线的存在</label></li>
</ul>
<span id="tp-cp-6" class="red"></span>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="risk_back_captcha_6">上一题</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="sub02" id="risk_next_captcha_6">下一题</a></div>
</div>

<div class="cp-list" id="cp-list_7" style="display: none">
<h3>7、假设您参加一项有奖竞节目，并已胜出，您希望获得的奖励方案：</h3>
<ul>
<li><label><input name="radio_7" type="radio" value="A" /> A. 立刻拿到1万元现金</label></li>
<li><label><input name="radio_7" type="radio" value="B" /> B. 有50%机会赢取5万元现金的抽奖</label></li>
<li><label><input name="radio_7" type="radio" value="C" /> C. 有25%机会赢取10万元现金的抽奖</label></li>
<li><label><input name="radio_7" type="radio" value="D" /> D. 有5%机会赢取100万元现金的抽奖</label></li>
</ul>
<span id="tp-cp-7" class="red"></span>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="risk_back_captcha_7">上一题</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="sub02" id="risk_next_captcha_7">下一题</a></div>
</div>

<div class="cp-list" id="cp-list_8" style="display: none">
<h3>8、如果您拥有50万用来建立资产组合，您会选择下面哪个组合</h3>
<ul>
<li><label><input name="radio_8" type="radio" value="A" /> A、低风险投资、一般风险投资、高风险投资的比重分别为70:20:10</label></li>
<li><label><input name="radio_8" type="radio" value="B" /> B、低风险投资、一般风险投资、高风险投资的比重分别为50:30:20</label></li>
<li><label><input name="radio_8" type="radio" value="C" /> C、低风险投资、一般风险投资、高风险投资的比重分别为30:40:30</label></li>
<li><label><input name="radio_8" type="radio" value="D" /> D、低风险投资、一般风险投资、高风险投资的比重分别为10:20:70</label></li>
</ul>
<span id="tp-cp-8" class="red"></span>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="risk_back_captcha_8">上一题</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="sub02" id="risk_next_captcha_8">下一题</a></div>
</div>

<div class="cp-list" id="cp-list_9" style="display: none">
<h3>9、以下哪项描述最符合您的投资态度？</h3>
<ul>
<li><label><input name="radio_9" type="radio" value="A" /> A. 厌恶风险，不希望本金损失，希望获得稳定回报</label></li>
<li><label><input name="radio_9" type="radio" value="B" /> B. 保守投资，不希望本金损失，愿意承担一定幅度的收益波动</label></li>
<li><label><input name="radio_9" type="radio" value="C" /> C. 寻求资金的较高收益和成长性，愿意为此承担有限本金损失</label></li>
<li><label><input name="radio_9" type="radio" value="D" /> D. 希望赚取高回报，愿意为此承担较大本金损失</label></li>
</ul>
<span id="tp-cp-9" class="red"></span>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="risk_back_captcha_9">上一题</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="sub02" id="risk_next_captcha_9">下一题</a></div>
</div>

<div class="cp-list" id="cp-list_10" style="display: none">
<h3>10、您的投资出现何种程度的波动时，您会呈现明显的焦虑？</h3>
<ul>
<li><label><input name="radio_10" type="radio" value="A" /> A. 最大本金亏损5%以内</label></li>
<li><label><input name="radio_10" type="radio" value="B" /> B. 最大本金亏损5%-20%以内</label></li>
<li><label><input name="radio_10" type="radio" value="C" /> C. 最大本金亏损20%-50%以内</label></li>
<li><label><input name="radio_10" type="radio" value="D" /> D. 最大本金亏损50%以上</label></li>
</ul>
<span id="tp-cp-10" class="red"></span>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="risk_back_captcha_10">上一题</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="sub03" id="risk_submit">提 交</a></div>
</div>

<div id="cp-ht_1" style="display: none">
<div class="cp-ht">
<ul>
<li><i></i><h3>稳健型</h3></li>
<li><i></i><h3>平衡型</h3></li>
<li class="cur"><i></i><h3>保守型</h3></li>
<li><i></i><h3>积极型</h3></li>
<li class="t-p"><i></i><h3>激进型</h3></li>
</ul>
</div>
<div class="black25"></div>
<div class="black25"></div>
<div class="cp-list">
您的风险承受能力水平比较低，不愿意接受暂时的投资损失或是极小的资产波动，您关注资产的安全性远超于资产的收益性，所以低风险、高流动性的投资品种比较适合您。
<div class="black25"></div>
<div class="black10"></div>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="cp-ht-ok_1">确定</a>　　<a href="javascript:void(0)" class="sub03" id="cp-tz_1">去投资></a></div>
<div class="black25"></div>
</div>
</div>

<div id="cp-ht_2" style="display: none">
<div class="cp-ht">
<ul>
<li><i></i><h3>保守型</h3></li>
<li><i></i><h3>平衡型</h3></li>
<li class="cur"><i></i><h3>稳健型</h3></li>
<li><i></i><h3>积极型</h3></li>
<li class="t-p"><i></i><h3>激进型</h3></li>
</ul>
</div>
<div class="black25"></div>
<div class="black25"></div>
<div class="cp-list">
您有比较有限的风险承受能力，对投资收益比较敏感，期望通过短期、持续的投资获得高于定期存款的回报。所以较低等级风险产品比较适合您。
<div class="black25"></div>
<div class="black10"></div>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="cp-ht-ok_2">确定</a>　　<a href="javascript:void(0)" class="sub03" id="cp-tz_2">去投资></a></div>
<div class="black25"></div>
</div>
</div>

<div id="cp-ht_3" style="display: none">
<div class="cp-ht">
<ul>
<li><i></i><h3>保守型</h3></li>
<li><i></i><h3>稳健型</h3></li>
<li  class="cur"><i></i><h3>平衡型</h3></li>
<li><i></i><h3>积极型</h3></li>
<li class="t-p"><i></i><h3>激进型</h3></li>
</ul>
</div>
<div class="black25"></div>
<div class="black25"></div>
<div class="cp-list">
您有一定的风险承受能力，强调投资风险和资产升值之间的平衡，主要投资目标是资产的升值，通常更注重十年甚至更长期限内的平均收益，所以中等风险收益的投资品比适合您，回避风险的同时有一定收益保证。
<div class="black25"></div>
<div class="black10"></div>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="cp-ht-ok_3">确定</a>　　<a href="javascript:void(0)" class="sub03" id="cp-tz_3">去投资></a></div>
<div class="black25"></div>
</div>
</div>

<div id="cp-ht_4" style="display: none">
<div class="cp-ht">
<ul>
<li><i></i><h3>保守型</h3></li>
<li><i></i><h3>稳健型</h3></li>
<li class="cur"><i></i><h3>积极型</h3></li>
<li><i></i><h3>平衡型</h3></li>
<li class="t-p"><i></i><h3>激进型</h3></li>

</ul>
</div>
<div class="black25"></div>
<div class="black25"></div>
<div class="cp-list">
您有中高的风险承受能力，为了获得高回报的投资收益，能够承受投资产品价格的一定波动，您可以承受一定的资产波动风险和本金亏损风险。所以中高等级的风险收益投资品种比较适合您，以一定的可预见风险换取超额收益。
<div class="black25"></div>
<div class="black10"></div>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="cp-ht-ok_4">确定</a>　　<a href="javascript:void(0)" class="sub03" id="cp-tz_4">去投资></a></div>
<div class="black25"></div>
</div>
</div>

<div id="cp-ht_5" style="display: none">
<div class="cp-ht">
<ul>
<li><i></i><h3>保守型</h3></li>
<li><i></i><h3>稳健型</h3></li>
<li class="cur"><i></i><h3>激进型</h3></li>
<li><i></i><h3>平衡型</h3></li>
<li class="t-p"><i></i><h3>积极型</h3></li>
</ul>
</div>
<div class="black25"></div>
<div class="black25"></div>
<div class="cp-list">
您有较高的风险承受能力，能够承受投资产品价格的显著波动，也可以承担这种波动所带来的结果，投资目标主要是取得超额收益，为实现投资目标愿意冒更大的风险。您适合从事灵活、风险与报酬都比较高的投资，不过要注意不要因一时的高报酬获利而将全部资金投入高风险操作，务必做好风险管理与资金调配工作。
<div class="black25"></div>
<div class="black10"></div>
<div class="cp-sub"><a href="javascript:void(0)" class="sub02" id="cp-ht-ok_5">确定</a>　　<a href="javascript:void(0)" class="sub03" id="cp-tz_5">去投资></a></div>

</div>
</div>

</div>
</div>
<!-- 未设置交易密码 提示框-->
<div id="authorize_box" style="display:none;">
	<div class="borrowingdialog" style="width:450px; height:240px;">
		<div class="black25"></div>
		<div class="black10"></div>
		<dl>
			<dt><i class="icondagth"></i></dt>
			<dd><h2>您还未设置交易密码</h2><p class="t-font"><span class="orange">提示：</span>投资、提现等交易环节需要验证交易密码，为了更加全面保护您的账户安全，请尽快设置交易密码。</p></dd>
			<div class="clear"></div>
		</dl>
		<div class="black25"></div>
		<div class="black10"></div>
		<div class="repaymentsub"><a id="authorize_box_ok" href="javascript:void(0)" class="accsub01">立即设置</a> <a id="authorize_box_cancel" href="javascript:void(0)" class="accsub02">以后再说</a></div>
	</div>
</div>


<div id="wbox_email" style="display:none;">
<div id="email_box_1" class="dialog_wbox dialog_settings">
<h2><i class="AllIcon iconI"></i>请填写您的邮箱地址，点击按钮发送验证邮件。</h2>
<dl>
<dt>邮箱地址：</dt>
<dd><input id="auth_email" type="text" class="inputtext01" /><p class="red"></p></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>图形验证码：</dt>
<dd><input id="email_captcha_code" type="text" maxlength="4" class="inputtext02" /><p class="red"></p><span class="gray paddingleft">请输入下面图片显示的字符，不区分大小写</span><p style="margin-top: 10px;"><img id="email_captcha_pic" src="" width="90" height="28" style="vertical-align: middle;" /> <a href="javascript:void(0)" class="blue">换一张</a></p>
<input type="hidden" id="email_captcha_seed" value="0" />
</dd>

<div class="clear"></div>
</dl>

<dl class="settingsub">
<dt>&nbsp;</dt>
<dd><a id="auth_email_send" href="javascript:void(0)" class="sub03">发送验证邮件</a> <span id="auth_email_loading" class="gray" style="display:none;"><img src="../../images/load.gif" tppabs="https://xin/2.0/images/load.gif" width="16" height="16" class="picimg" /> 正发送验证邮件，请稍等...</span></dd>
<div class="black20"></div>
</dl>
</div><!--邮箱认证-->
<div id="email_box_2" class="dialog_wbox dialog_settings" style="display:none;">
<dl>
<dt>当前邮箱地址：</dt>
<dd id="now_email">--</dd>
<div class="clear"></div>
</dl>
<dl>
<dt>新邮箱地址：</dt>
<dd><input id="new_email" type="text" class="inputtext01" /></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>信融交易密码：</dt>
<dd><input id="safe_pwd" type="text" class="inputtext01" /></dd>
<div class="clear"></div>
</dl>
<dl class="settingsub">
<dt>&nbsp;</dt>
<dd><a id="up_email_send" href="javascript:void(0)" class="sub03">确认修改</a> <span id="up_email_loading" class="gray" style="display:none;"><img src="../../images/load.gif" tppabs="https://xin/2.0/images/load.gif" width="16" height="16" class="picimg" /> 正发送验证邮件，请稍等...</span></dd>
<div class="black20"></div>
</dl>
</div><!--修改邮箱-->
<div id="email_box_3" class="dialog_wbox dialog_settings" style="display:none;">
<div class="email_success">
<h3><i class="icondai AllIcon"></i>已向您填写的邮箱发送一封验证邮件，请查收并完成验证。</h3>
<ul>
<li>接收邮箱：<font id="suc_email">--</font> <a href="javascript:void(0)" target="_blank" id="check_email" class="blue paddingleft">查收邮件</a> <a href="javascript:void(0)" id="back_up_email" class="blue paddingleft">修改地址</a></li>
</ul>
<div class="dialogsub"><a id="email_over" href="javascript:void(0)" class="sub03">我已完成认证</a></div>
</div>
<div class="success-msg">如果您在 <span class="red">120</span> 秒内未收到邮件，请点击 <a id="again_send" href="javascript:void(0)" class="sub01">重新发送</a></div>
</div>
</div>
<!--完成邮箱-->

<div id="wbox_phone" style="display:none;">
<div id="mobile_box_1" class="dialog_wbox dialog_settings" style="width: 550px;">
	<dl>
		<dt>当前手机号码：</dt>
		<dd id="up_mobile_old_mobile">--</dd>
		<div class="clear"></div>
	</dl>
	<dl>
		<dt>图形验证码：</dt>
		<dd><input id="up_mobile_pic_captcha_code_1" type="text" maxlength="4" class="inputtext02" /> <span class="gray paddingleft">请输入下面图片显示的字符，不区分大小写</span><p style="margin-top: 10px;"><img id="up_mobile_pic_captcha_1" src="" width="90" height="28" style="vertical-align: middle;" /> <a href="javascript:void(0)" class="blue">换一张</a></p>
		<input type="hidden" id="up_mobile_pic_captcha_seed_1" value="0" />
		</dd>
		<div class="clear"></div>
	</dl>
	<dl>
		<dt>手机验证码：</dt>
		<dd><input id="up_mobile_mobile_captcha_1" type="text" class="inputtext02" /> <a id="send_mobile_captcha_1" href="javascript:void(0)" class="sub04" style="width: 80px;">发送验证码</a>
		<p id="voice_tip_view_1" style="display:none;"><span style="width:14px; height:14px; background:url(/2.0/images/tip-s5a01e083c6.png) no-repeat; background-position:-1px -247px; display:inline-block; vertical-align:middle; margin:0 5px 3px 3px;"></span><font style="font-size: 15px;color: #e1b43d;">正在给您致电，请注意接听</font></p>
		<p class="red"></p>
		</dd>
		<div class="clear"></div>
	</dl>
	<dl class="settingsub">
		<dt>&nbsp;</dt>
		<dd><a id="up_mobile_next_1" href="javascript:void(0)" class="sub03">下一步</a> <!--<a href="javascript:void(0)" class="sub02">发送语音验证码</a> <p class="gray"><img src="/2.0/images/load.gif" width="16" height="16" class="picimg" /> 正发送验证邮件，请稍等...</p> --></dd>
		<div class="black20"></div>
	</dl>
</div>
<div id="mobile_box_2" class="dialog_wbox dialog_settings" style="display:none;">
	<dl>
		<dt>新手机号码：</dt>
		<dd>
			<input id="newMobile" type="text" class="inputtext01" style="width: 185px;" />
			<p class="red"></p>
		</dd>
		<div class="clear"></div>
	</dl>
	<dl>
		<dt>图形验证码：</dt>
		<dd><input id="up_mobile_pic_captcha_code_2" type="text" maxlength="4" class="inputtext02" /> <span class="gray paddingleft">请输入下面图片显示的字符，不区分大小写</span><p style="margin-top: 10px;"><img id="up_mobile_pic_captcha_2" src="" width="90" height="28" style="vertical-align: middle;" /> <a href="javascript:void(0)" class="blue">换一张</a></p>
		<input type="hidden" id="up_mobile_pic_captcha_seed_2" value="0" />
		</dd>
		<div class="clear"></div>
	</dl>
	<dl>
		<dt>新手机验证码：</dt>
		<dd>
			<input id="up_mobile_mobile_captcha_2" type="text" class="inputtext02" /> <a id="send_mobile_captcha_2" href="javascript:void(0)" class="sub04" style="width: 80px;">发送验证码</a>
			<p id="voice_tip_view_2" style="display:none;"><span style="width:14px; height:14px; background:url(/2.0/images/tip-s5a01e083c6.png) no-repeat; background-position:-1px -247px; display:inline-block; vertical-align:middle; margin:0 5px 3px 3px;"></span><font style="font-size: 15px;color: #e1b43d;">正在给您致电，请注意接听</font></p>
			<p class="red"></p>
		</dd>
		<div class="clear"></div>
	</dl>
	<dl class="settingsub">
		<dt>&nbsp;</dt>
		<dd><a id="up_mobile_next_2" href="javascript:void(0)" class="sub03">确定</a></dd>
		<div class="black20"></div>
	</dl>
</div>
<div id="mobile_box_3" class="dialog_wbox" style="display:none;">
	<div class="dialog_success">
		<h3><i class="AllIcon icondagou"></i>恭喜您成功修改手机号！</h3>
	</div>
	<div id="up_mobile_next_3" class="dialogsub"><a href="javascript:void(0)" class="sub03">确定</a></div>
</div>
</div>
<!--手机修改-->

<div id="wbox_address" style="display:none;">
<div id="address_box_1" class="dialog_wbox dialog_address">
<dl>
<dt><i class="AllIcon icondai"></i></dt>
<dd>
	<h3>请输入您的收件信息</h3>
	<ul class="address_list">
		<li>请您留下具体地址，方便我们进行邮寄。</li>
		<li><select id="province"><option>请选择省份</option></select> <select id="city"><option>请选择城市</option></select> <select id="district"><option>请选择地区</option></select></li>
		<li><input id="address" type="text" class="inputtext01" placeholder="请输入街道地址（不要重复填写省/市/区）" /></li>
		<li>邮政编码：<input id="zip" type="text" maxlength="6" class="inputtext02" />
		<p id="error_view" class="red"></p>
		</li>
	</ul>
</dd>
<div class="clear"></div>
</dl>
<div class="dialogsub"><a id="address_next_btn" href="javascript:void(0)" class="sub02">下一步</a></div>
</div>
<div id="address_box_2" class="dialog_wbox dialog_address" style="display:none;">
<dl>
<dt><i class="AllIcon icondai"></i></dt>
<dd><h3>请确认您的收件信息</h3><ul class="address_list"><li id="confirm_address">--</li></ul></dd>
<div class="clear"></div>
</dl>
<div class="dialogsub"><a id="address_confirm_btn" href="javascript:void(0)" class="sub03">确定提交</a> <a id="address_back_btn" href="javascript:void(0)" class="sub01">返回修改</a></div>
</div>
</div>
<!--收件地址 end-->

<div id="wbox_password" style="display:none;">
<div id="pwd_box_1" class="dialog_wbox dialog_settings">
<div class="black15"></div>
<dl>
<dt>当前登录密码：</dt>
<dd><input id="curPwd" type="password" class="inputtext01" /></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>新登录密码：</dt>
<dd><input id="newPwd" type="password" class="inputtext01" /></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>确认新密码：</dt>
<dd><input id="confirmPwd" type="password" class="inputtext01" />
<p id="msg_view" class="red" style="padding-top: 10px;display: none;"><i class="AllIcon iconx"></i></p>
</dd>
<div class="clear"></div>
</dl>
<dl>
<dt class="red">&nbsp;</dt>
<dd>为了确保安全，登录密码<span class="red">不能与交易密码相同</span><p class="gray">长度6-16位，可由英文字母、数字和下划线组成，区分大小写</p></dd>
<div class="clear"></div>
</dl>
<dl class="settingsub">
<dt>&nbsp;</dt>
<dd><a id="modifyPwdBut" href="javascript:void(0)" class="sub02">确定</a></dd>
<div class="clear"></div>
</dl>
</div>
<div id="pwd_box_2" class="dialog_wbox" style="display:none;">
<div class="dialog_success">
<h3><i class="AllIcon icondagou"></i>登录密码修改成功！</h3>
<ul>
<li><p class="gray">为了您的账户安全，请妥善保管您的密码。</p></li>
</ul>
</div>
<div class="dialogsub">
<a href="javascript:void(0)"  class="sub02 wBox_close">确定</a>
</div>
</div>
</div>
<!--登录密码修改-->

<div id="wbox_aqpassword" style="display:none;">
<div id="pwd_box_1" class="dialog_wbox dialog_settings">
<div class="black15"></div>
<dl>
<dt>当前交易密码：</dt>
<dd><input id="curPwd" type="password" class="inputtext01" /></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>新交易密码：</dt>
<dd><input id="newPwd" type="password" class="inputtext01" /></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>确认新密码：</dt>
<dd><input id="confirmPwd" type="password" class="inputtext01" />
<p id="msg_view" class="red" style="padding-top: 10px;display: none;"><i class="AllIcon iconx"></i></p>
</dd>
<div class="clear"></div>
</dl>
<dl>
<dt class="red">&nbsp;</dt>
<dd>为了确保安全，交易密码<span class="red">不能与登录密码相同</span><p class="gray">长度6-16位，可由英文字母、数字和下划线组成，区分大小写</p></dd>
<div class="clear"></div>
</dl>
<dl class="settingsub">
<dt>&nbsp;</dt>
<dd><a id="modifyPwdBut" href="javascript:void(0)" class="sub02">确定</a></dd>
<div class="clear"></div>
</dl>
</div>
<div id="pwd_box_2" class="dialog_wbox"  style="display:none;">
<div class="dialog_success">
<h3><i class="AllIcon icondagou"></i>交易密码修改成功！</h3>
<ul>
<li><p class="gray">为了您的安全，请妥善保管您的密码。</p></li>
</ul>
</div>
<div class="dialogsub">
<a href="javascript:void(0)" id="confirm_to_reset_state" class="sub02 wBox_close">确定</a>
</div>
</div>
</div>
<!--交易密码修改-->
<div id="wbox_aqpassword1" style="display:none;">
<div id="pwd_box_1" class="dialog_wbox dialog_settings">
<div class="black15"></div>
<dl>
<dt>新交易密码：</dt>
<dd><input id="newPwd" type="password" class="inputtext01" /></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>确认新密码：</dt>
<dd><input id="confirmPwd" type="password" class="inputtext01" />
<p id="msg_view" class="red" style="padding-top: 10px;display: none;"><i class="AllIcon iconx"></i></p>
</dd>
<div class="clear"></div>
</dl>
<dl>
<dt class="red">安全提醒：</dt>
<dd>为确保安全，交易密码请<span class="red">不要与登录密码相同</span><p class="gray">长度6-16位，可由英文字母、数字和下划线组成，区分大小写</p></dd>
<div class="clear"></div>
</dl>
<dl class="settingsub">
<dt>&nbsp;</dt>
<dd><a id="modifyPwdBut" href="javascript:void(0)" class="sub02">确定</a></dd>
<div class="clear"></div>
</dl>
</div>
<div id="pwd_box_2" class="dialog_wbox"  style="display:none;">
<div class="dialog_success">
<h3><i class="AllIcon icondagou"></i>交易密码修改成功！</h3>
<ul>
<li><p class="gray">为了您的安全，请妥善保管您的密码。</p></li>
</ul>
</div>
<div class="dialogsub">
<a href="javascript:location.reload(true)" class="sub02 wBox_close">确定</a>
</div>
</div>
</div>
<!--交易密码设置-->

<div id="wbox_autoinvest" style="display:none;">
<div class="dialog_wbox" style="display:none;">
<div class="dialog_success">
<h3><i class="AllIcon icondagth"></i>您的自动投资已开启！</h3>
</div>
<div class="dialogsub">
<a href="javascript:void(0)" class="sub02">确定</a>
</div>
</div>
<div class="dialog_wbox">
<div class="dialog_success">
<h3><i class="AllIcon icondagth"></i>您的自动投资已关闭！</h3>
<ul>
<li><p class="gray">如您再次需要启动自动投资，请重新开启！</p></li>
</ul>
</div>
<div class="dialogsub">
<a href="javascript:void(0)" class="sub02">确定</a>
</div>
</div>
</div>
<!--自动投资提示-->

<script>
	var bankQuickAuthHtml=
		'<div id="wbox_quick_auth_box" >\
	<div  class="dialog_wbox fast_box" >\
	<h4 style="line-height:40px">&nbsp;&nbsp;&nbsp;请务必填写真实信息，账户资金只能提现至真实姓名与之对应的银行账号</h4>\
	<dl>\
	<dt>真实姓名：</dt>\
	<dd id="dd_real_name"><input id="real_name" type="text" class="inputtext01 textborder auth_real_name" value=""/></dd>\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>身份证号：</dt>\
	<dd id="dd_cert_no"><input id="cert_no" type="text" class="inputtext01" value=""/></dd>\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>开户银行：</dt>\
	<dd>\
		<select id="bank_name" class="select01" style="width:140px">\
		<option >中国农业银行</option>\
		<option >中国银行</option>\
		<option >中国建设银行</option>\
		<option >中国光大银行</option>\
		<option >兴业银行</option>\
		<option >中国民生银行</option>\
		<option >中信银行</option>\
		<option >平安银行</option>\
		<option >交通银行</option>\
		<option>中国工商银行</option>\
		<option>招商银行</option>\
		<option>宁波银行</option>\
		<option>浦发银行</option>\
		<option>杭州银行</option>\
		<option>广发银行股份有限公司</option>\
		</select>\
		<span class="tips" id="bank_tips_info"><i class="AllIcon iconi"></i>开户姓名必须与真实姓名一致</span>\
	</dd>\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>开户行所在地：</dt>\
	<dd>\
		<select id="loc_province" class="select01" ></select>\
		<span class="paddingtleft">\
			<select id="loc_city" class="select01">\
			</select>\
		</span>\
		<span class="paddingtleft">\
			<select id="loc_town" class="select01">\
			</select>\
		</span>\
		<input type="hidden" name="location_id" />\
	</dd>\
	<input type="hidden" id="province" value="" />\
	<input type="hidden" id="city" value="" />\
	<input type="hidden" id="town" value="" />\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>支行名称：</dt>\
	<dd><input id="branch_name" type="text" class="inputtext01" value="" placeholder="请以“支行”结尾，如：科技园支行" /></dd>\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>银行卡号：</dt>\
	<dd><input id="bank_no" type="text" class="inputtext01" value=""/></dd>\
	<div class="clear"></div>\
	</dl>\
	<dl class="error">\
	<dt>&nbsp;</dt>\
	<dd class="red" style="display:none" id="error_info"><i class="AllIcon iconx"></i>-</dd>\
	<div class="clear"></div>\
	</dl>\
	<dl>\
	<dt>&nbsp;</dt>\
	<dd><a href="javascript:void(0)" id="step_one_next1"  class="sub02" onclick="BankQuickAuthWin.check();">下一步</a></dd>\
	<div class="clear"></div>\
	</dl>\
	<div style="padding:20px 20px;" class="settings_tips gray">\
	<i class="AllIcon iconi"></i>注册账号的姓名、手机号码必须与银行开户姓名、银行预留手机号完全一致才能通过认证，请务必仔细填写。 <br>&nbsp; &nbsp;&nbsp; &nbsp;银行卡认证仅支持借记卡，不支持信用卡和存折\
	</div>\
	</div>\
	</div>'

	var quickAuthSuccessWin=
		'<div class="dialog_wbox" style="width:450px;"><div class="dialog_success">\
		<dl>\
		<dt><i class="AllIcon icondagou"></i></dt>\
		<dd><h3><b>恭喜您认证成功，获得<span class="red"><font id="quick_auth_success_reward"></font>元</span>投资礼金</b></h3></dd>\
		<div class="clear"></div>\
		</dl>\
		</div>\
		<div class="dialogsub">\
		<a href="javascript:location.reload();" class="sub02">确 定</a>\
		</div>\
		</div>';

	var quickAuthFailWin=
		'<div class="dialog_wbox dialog_bank" style="width:510px;"><div class="dialog_success">\
		<dl>\
		<dt><i class="AllIcon icondagou"></i></dt>\
		<dd><h3><b>恭喜您实名认证成功！</b></h3>获得<span class="red">3元</span>投资礼金,银行卡信息已保存成功</dd>\
		<div class="clear"></div>\
		</dl>\
		<div class="dialogsub subhover">\
		<a href="../../../my/rechargec-quick=1;.htm"/*tpa=https://xin/my/rechargec?quick=1;*/ class="sub02">去充值认证<span class="infobox">需用无网银快捷安全支付充值至少2元，充值成功后该银行卡立即锁定；提现银行卡将不能更改<b><img src="../../images/bicon.png"/*tpa=https://xin/2.0/images/bicon.png*/ /></b></span></a>\
		</div>\
		</div></div>';

	var feeAuth1Win=
		'<div style="height:10px;"></div>\
		<div class="dialog_wbox_2 dialog_center_2">\
		<h3><i class="AllIcon icondagth"></i><span style="display:inline-block; text-align:left; vertical-align:middle;">3次免费认证机会已使用完，继续<br />认证需收费5元一次。</span></h3>\
		<dl>\
		<dt>应付金额：</dt>\
		<dd><span class="red">5</span>元</dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户名：</dt>\
		<dd><font id="feeAuth1Win_username_view">--</font></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户余额：</dt>\
		<dd><font id="feeAuth1Win_totalMoney_view">--</font>元</dd>\
		<div class="clear"></div>\
		</dl>\
		<div class="dialogsub"><a id="feeAuth1Win_btn_1" href="javascript:void(0)" class="sub02">确定</a>　<a id="feeAuth1Win_btn_2" href="javascript:void(0)" class="sub03">返回</a></div>\
		</div>';

	var feeAuth2Win=
		'<div class="dialog_wbox_2 dialog_center_2">\
		<h3><i class="AllIcon icondagth"></i>您的账户余额不足！</h3>\
		<dl>\
		<dt>应付金额：</dt>\
		<dd><span class="red">5</span>元</dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户名：</dt>\
		<dd><font id="feeAuth2Win_username_view">--</font></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户余额：</dt>\
		<dd><font id="feeAuth2Win_totalMoney_view">--</font>元 <span class="gray">（您还有<font id="feeAuth2Win_rewardMoney_view">--</font>元可用投资红包）</span></dd>\
		<div class="clear"></div>\
		</dl>\
		<div class="dialogsub"><a href="../../../my/recharge.htm"/*tpa=https://xin/my/recharge*/ class="sub02">立即充值</a> <span><i class="AllIcon iconi"></i>需充值5.00元</span></div>\
		</div>';

	var idAuthFailWin=
		'<div style="height:10px;"></div>\
		<div class="dialog_wbox_2 dialog_center_2">\
		<h3><i class="AllIcon icondax"></i>实名认证失败</h3>\
		<dl>\
		<dt>实付金额：</dt>\
		<dd><span class="red"><font id="idAuthFailWin_fee_view">--</font></span>元</dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户名：</dt>\
		<dd><font id="idAuthFailWin_username_view">--</font></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>账户余额：</dt>\
		<dd><font id="idAuthFailWin_totalMoney_view">--</font>元 </dd>\
		<div class="clear"></div>\
		</dl>\
		<div class="dialogsub"><a id="idAuthFailWin_btn_1" href="javascript:void(0)" class="sub02">重新认证</a></div>\
		</div>';

</script>

<script>
	BankQuickAuthWin={
		defaults:{
	           	"real_name":'',
	           	"cert_no":'',
	           	"branch_name":'',
	           	"bank_no":'',
	           	"callback":undefined
		},
		options:undefined,
		isModify:false,
		box:null,
		realName:null,
		identifyNo:null,
		init:function(data){
			BankQuickAuthWin.options = $.extend({},BankQuickAuthWin.defaults,data);

			var options=BankQuickAuthWin.options;
			//初始化值
			/* $('#real_name').val(options.real_name);
			$('#cert_no').val(options.cert_no);
			$('#branch_name').val(options.branch_name);
			$('#bank_no').val(options.bank_no); */

			if(options.real_name!=''){

				BankQuickAuthWin.isModify=true;
				$('#dd_real_name').html('<b id="real_name">'+options.real_name+'</b>');
				$('#dd_cert_no').html('<span class="paddingleft" id="cert_no">'+options.cert_no+'</span>');
			}

			//初始化地址信息
			showLocation();
		},
		show:function(data){
			/* var wBox = $("#wbox_quick_auth_box").wBox({
				title: "银行卡身份认证",
				html: bankQuickAuthHtml
			});

			wBox.showBox();	 */

			var wBox=$.dialog({

				 'title':'银行卡身份认证',
	             'padding':'0px 0px 0px 30px',
	             'content':bankQuickAuthHtml,
	             'height':'380px',
	             'initialize':function () {

	            	 BankQuickAuthWin.init(data);
	             }
			 });

			BankQuickAuthWin.box=wBox;
		},
		check:function(){
			if($('#step_one_next1').html() == '处理中…'){
				return;
			}
			var real_name='';
			var cert_no ='';
			var bank_name = $("#bank_name :selected").text();
			var loc_province = $("#loc_province :selected").text();
			var loc_city = $("#loc_city :selected").text();
			var loc_town = $("#loc_town :selected").text();

			var loc_province_val = $("#province").val();
			var loc_city_val =  $("#city").val();
			var loc_town_val =  $("#town").val();

			var branch_name = $("#branch_name").val();
			var bank_no = $.trim($("#bank_no").val());

			if(!BankQuickAuthWin.isModify){
				real_name = $("#real_name").val();
				cert_no = $.trim($("#cert_no").val());

				if(real_name == ''){
					BankQuickAuthWin.showErrMsg('真实姓名不能为空');
					return;
				}
				if(!/^([\u4e00-\u9fa5\·\.]{1,20}|[a-zA-Z\·\.\s]{1,20})$/.test(real_name)){
					BankQuickAuthWin.showErrMsg('真实姓名输入不合法');
					return;
				}
				if(cert_no == ''){
					BankQuickAuthWin.showErrMsg('身份证号不能为空');
					return;
				}
				if(cert_no.length != 18){
					BankQuickAuthWin.showErrMsg('身份证号必须为18位');
					return;
				}
				//if(!/(\d{18}$)|(\d{17}(\d|X|x)$)/.test(cert_no)){
				if(!checkIdentityNumber(cert_no)){
					BankQuickAuthWin.showErrMsg('身份证输入不合法');
					return;
				}
			}

			if(bank_name == '请选择银行' ){
				BankQuickAuthWin.showErrMsg('请选择银行');
				return;
			}
			if(branch_name == ''){
				BankQuickAuthWin.showErrMsg('支行名称不能为空');
				return;
			}
			if(bank_no == ''){
				BankQuickAuthWin.showErrMsg('银行卡号不能为空');
				return;
			}
			if(isNaN(bank_no)){
				BankQuickAuthWin.showErrMsg('银行卡号只能为数字');
				return;
			}

			if( (loc_province == '请选择省份' && loc_city == '请选择城市' &&  loc_town == '请选择地区' )
					&& (loc_province_val != '' && loc_city_val!= '' && loc_town_val != '') ){
					loc_province = loc_province_val;
					loc_city = 	loc_city_val;
					loc_town = loc_town_val;
			}else{
				if(loc_province == '请选择省份'){
					BankQuickAuthWin.showErrMsg('请选择省份');
					return;
				}
				if(loc_city == '请选择城市'){
					BankQuickAuthWin.showErrMsg('请选择城市');
					return;
				}
				if(loc_town == '请选择地区'){
					BankQuickAuthWin.showErrMsg('请选择地区');
					return;
				}
			}
			if(bank_no.length>4){
				var card=BANK_CARD.getCardInfo(bank_no,4);
				if(typeof card =='object' && card !=null){
					if(bank_no.length!=card.codelen){
						BankQuickAuthWin.showErrMsg('银行卡号应为'+card.codelen+'个数字!');
						return;
					}else if(card.bank!=bank_name){
						BankQuickAuthWin.showErrMsg("您写的银行卡号与已选的开户银行不匹配");
						return;
					}
				}else{
					BankQuickAuthWin.showErrMsg("您写的银行卡号与已选的开户银行不匹配");
					return;
				}
			}else{
				BankQuickAuthWin.showErrMsg("您写的银行卡号与已选的开户银行不匹配");
				return;
			}
			
			BankQuickAuthWin.hideErrMsg();

			BankQuickAuthWin.auth(real_name,cert_no,bank_name,loc_province,loc_city,loc_town,branch_name,bank_no);
		},
		auth:function(real_name,cert_no,bank_name,loc_province,loc_city,loc_town,branch_name,bank_no){
			var city = loc_province+ ' ' + loc_city + ' ' +　loc_town;
			var quick_auth_bank_type='8';

			$('#step_one_next1').removeClass('sub02').addClass('sub01');
			$('#step_one_next1').html('处理中…');
			UserAPI.Auth.QuickAuth({
				realname:real_name,identifyNo:cert_no,bankName:bank_name,city:city,batchName:branch_name,bankNo:bank_no,type:quick_auth_bank_type
				},
				function(result){
					if(result.state==0){
						if(result.data>0){
							$('#step_one_next1').removeClass('sub01').addClass('sub02');
							$('#step_one_next1').html('下一步');
							BankQuickAuthWin.box.close();
							BankQuickAuthWin.authSuccessWin();
						}else{
							BankQuickAuthWin.realName = real_name;
							BankQuickAuthWin.identifyNo = cert_no;

							UserAPI.Auth.GetIdCardAndBankCheckNumber({},function(result2){
								if(result2.state == 0){
									var identificationLeftNumber = result2.data.identificationLeftNumber;
									if(identificationLeftNumber == null){
										identificationLeftNumber = 3;
									}
									if(identificationLeftNumber <= 0){
										$('#step_one_next1').removeClass('sub01').addClass('sub02');
										$('#step_one_next1').html('下一步');
										//window.location.href = 'https://xin/2.0/views/account/id_bank_fee_auth.html';
										//BankQuickAuthWin.box.close();
										BankQuickAuthWin.feeAuthWin();
									}else{
										$('#step_one_next1').removeClass('sub02').addClass('sub01');
										$('#step_one_next1').html('处理中…');
										BankQuickAuthWin.idAuth(real_name,cert_no);
									}
								}
							});
						}
					}else{
						$('#step_one_next1').removeClass('sub01').addClass('sub02');
						$('#step_one_next1').html('下一步');
						if(result.state == 1001){
							BankQuickAuthWin.showErrMsg('身份证已存在');
							return;
						}else if(result.state==2100){
							BankQuickAuthWin.authFailWin();
							return;
						}
					}
				}
			);
		},
		idAuth:function(realName,identifyNo){
			if(!(realName && identifyNo)){
				if(BankQuickAuthWin.realName == null || BankQuickAuthWin.identifyNo == null){
					return;
				}
				if(BankQuickAuthWin.realName == '' || BankQuickAuthWin.identifyNo == ''){
					return;
				}else{
					realName = BankQuickAuthWin.realName;
					identifyNo = BankQuickAuthWin.identifyNo;
				}
			}

			UserAPI.Auth.idAuth({name:realName,certNo:identifyNo},function(data){
				$('#step_one_next1').removeClass('sub01').addClass('sub02');
				$('#step_one_next1').html('下一步');
				if(data.state == 0||data.state==2002||data.state==2000){
					BankQuickAuthWin.box.close();
					BankQuickAuthWin.authFailWin();
				}else{
					if(data.state == 2001){
						BankQuickAuthWin.showErrMsg('身份证格式不正确');
					}else if(data.state == 2003||data.state == 2000||data.state == '-9999'){
						BankQuickAuthWin.showErrMsg(data.msg);
					}else if(data.state == 2100){
						BankQuickAuthWin.showErrMsg('真实姓名与身份证号不匹配。您还有'+data.msg+'次机会，超过3次认证每次收取5元手续费。');
					}else if(data.state == 2101){
						BankQuickAuthWin.idAuthFailWin(true);
					}else {
						BankQuickAuthWin.showErrMsg('系统繁忙,稍后请重试');
					}
				}
			});
		},
		showErrMsg:function(msg){
			$("#error_info").html('<i class="AllIcon iconx"></i>'+msg).show();
		},
		hideErrMsg:function(){
			$("#error_info").html('').hide();
		},
		authSuccessWin:function(){
			/* var wBox = $("#wbox_quick_auth_box").wBox({
				title: "银行卡身份认证",
				html: quickAuthSuccessWin
			}); */

			var wBox= $.dialog({
				 'title':'银行卡身份认证',
	             'padding':'0px 0px 0px 0px',
	             'content':quickAuthSuccessWin,
	             'initialize':function () {

	            	 if(!BankQuickAuthWin.isModify){
	     				$('#quick_auth_success_reward').html('7');
	     				$('#quick_auth_success_reward_desc').html('（实名认证3元+银行卡认证4元）');
	     			}else{
	     				$('#quick_auth_success_reward').html('4');
	     				$('#quick_auth_success_reward_desc').html('（银行卡认证4元）');
	     			}
	             }
			 });
			BankQuickAuthWin.box=wBox;
		},
		authFailWin:function(){
			/* var wBox = $("#wbox_quick_auth_box").wBox({
				title: "银行卡身份认证",
				html: quickAuthFailWin
			}); */

			var wBox= $.dialog({
				 'title':'银行卡身份认证',
	             'padding':'0px 0px 0px 0px',
	             'content':quickAuthFailWin,
	             'initialize':function () {
	             }
			 });

			BankQuickAuthWin.box=wBox;
		},
		idAuthFailWin:function(flag){
			UserAPI.AccountBaseInfo({},function(result){
				if(result.state == 0){
					var totalMoney = result.totalMoney;

					var wBox= $.dialog({
						'title':'银行卡身份认证',
						width:'370px',
	        			'padding':'0px 0px 0px 0px',
	        			'content':idAuthFailWin,
	        			'initialize':function () {
	        				if(flag){
	        					$('#idAuthFailWin_fee_view').html('5');
	        				}else{
	        					$('#idAuthFailWin_fee_view').html('0');
	        				}
	        				$('#idAuthFailWin_username_view').html(G_ENV_VAR.UNAME);
	        				$('#idAuthFailWin_totalMoney_view').html(totalMoney);
	        				$('#idAuthFailWin_btn_1').unbind('click').click(function(){
				 				BankQuickAuthWin.box2.close();
				 				BankQuickAuthWin.box.close();
				 				BankQuickAuthWin.show();
				 			});
	       				}
					});
					BankQuickAuthWin.box2=wBox;
				}
			});
		},
		feeAuthWin:function(){
			UserAPI.AccountBaseInfo({},function(result){
				if(result.state == 0){
					var totalMoney = result.totalMoney;
					var rewardMoney = result.rewardMoney;

					var wBox;
					if(Number(totalMoney) >= 5){//提示付费认证
						wBox= $.dialog({
				 			'title':'银行卡身份认证',
	             			'padding':'0px 0px 0px 0px',
	             			'content':feeAuth1Win,
	             			'initialize':function () {
				 				$('#feeAuth1Win_username_view').html(G_ENV_VAR.UNAME);
				 				$('#feeAuth1Win_totalMoney_view').html(totalMoney);
				 				$('#feeAuth1Win_btn_1').unbind('click').click(function(){
				 					$('#step_one_next1').removeClass('sub02').addClass('sub01');
				 					$('#step_one_next1').html('处理中…');
				 					BankQuickAuthWin.idAuth();
				 					BankQuickAuthWin.box2.close();
				 				});
				 				$('#feeAuth1Win_btn_2').unbind('click').click(function(){
				 					BankQuickAuthWin.box2.close();
				 				});
	             			}
			 			});
					}else{//提示充值
						wBox= $.dialog({
				 			'title':'银行卡身份认证',
	             			'padding':'0px 0px 0px 0px',
	             			'content':feeAuth2Win,
	             			'initialize':function () {
				 				$('#feeAuth2Win_username_view').html(G_ENV_VAR.UNAME);
				 				$('#feeAuth2Win_totalMoney_view').html(totalMoney);
				 				$('#feeAuth2Win_rewardMoney_view').html(rewardMoney);
	             			}
			 			});
					}
					BankQuickAuthWin.box2=wBox;
				}
			});
		}
	};

	function checkIdentityNumber(idNum){
		if(idNum == null || idNum == ''){
			return false;
		}
		if(!/(\d{18}$)|(\d{17}(\d|X|x))$/.test(idNum)){
			return false;
		}
		var tempNum = 0;
		var modulus = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];

		for(var i=0;i<17;i++){
			var n = parseInt(idNum.substring(i,i+1));
			var tempAdd = n * modulus[i];
			tempNum += tempAdd;
		}

		var modulusLast = ["1","0","x","9","8","7","6","5","4","3","2"];
		var last = idNum.substring(17);
		var tempStr = modulusLast[tempNum%11];
		if(last.toLowerCase()!=tempStr){
			return false;
		}

		return true;
	}
	
	
</script>

<script>
	var checkMobileCaptchaHtml=
		'<div class="dialog_wbox dialog_bank">\
		<div class="bank_list">\
		<h3><b>银行账户修改</b> <span class="gray paddingleft">仅支持借记卡，不支持<span class="red">信用卡和存折</span></span></h3>\
		<ul class="certifica_guild">\
		<li class="zindex06 guildbg">1.确认身份<i class="guild_pic"></i></li>\
		<li class="zindex05">2.填写银行卡信息<i class="guild_pic"></i></li>\
		<li class="zindex04"  style="width:240px;">3.确认并提交</li>\
		</ul>\
		<div class="clear"></div>\
		<h4><i class="AllIcon iconi"></i>为确保您的资金安全，请填写您的身份信息</h4>\
		<dl>\
		<dt>真实姓名：</dt>\
		<dd><input id="validate_real_name" name="" type="text" class="inputtext02" /></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>身份证号：</dt>\
		<dd><input id="validate_cert_no" name="" type="text" class="inputtext01" /></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>&nbsp;</dt>\
		<dd>\
		<p id="error_info" style="display:none;" class="red"></p></dd>\
		</dl>\
		<dl class="settingsub">\
		<dt>&nbsp;</dt>\
		<dd><a href="javascript:modifyBankInfo.checkIdentity();" class="sub02">下一步</a></dd>\
		<div class="clear"></div>\
		</dl>\
		';

	var modifyBankInfoHtml=
		'<div class="dialog_wbox dialog_bank">\
		<div class="bank_list">\
		<h3><b>银行账户修改</b> <span class="gray paddingleft">仅支持借记卡，不支持信用卡和存折</span></h3>\
		<ul class="certifica_guild">\
		<li class="zindex06">1.确认身份<i class="guild_pic"></i></li>\
		<li class="zindex05 guildbg">2.填写银行卡信息<i class="guild_pic"></i></li>\
		<li class="zindex04" style="width:240px;">3.确认并提交</li>\
		</ul>\
		<dl>\
		<dt>真实姓名：</dt>\
		<dd><b id="real_name"></b><span class="paddingleft" id="cert_no"></span></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>开户银行：</dt>\
		<dd>\
		<select id="bank_name" class="select01" style="width:140px">\
		<option >中国农业银行</option>\
		<option >中国银行</option>\
		<option >中国建设银行</option>\
		<option >中国光大银行</option>\
		<option >兴业银行</option>\
		<option >中国民生银行</option>\
		<option >中信银行</option>\
		<option >平安银行</option>\
		<option >交通银行</option>\
		<option>中国工商银行</option>\
		<option>招商银行</option>\
		<option>宁波银行</option>\
		<option>浦发银行</option>\
		<option>杭州银行</option>\
		<option>广发银行股份有限公司</option>\
		</select>\
			<span class="tips" id="bank_tips_info"><i class="AllIcon iconi"></i>开户姓名必须与真实姓名一致</span>\
		</dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>开户行所在地：</dt>\
		<dd>\
			<select id="loc_province" class="select01" ></select>\
			<span class="paddingtleft">\
				<select id="loc_city" class="select01">\
				</select>\
			</span>\
			<span class="paddingtleft">\
				<select id="loc_town" class="select01">\
				</select>\
			</span>\
			<input type="hidden" name="location_id" />\
		</dd>\
		<input type="hidden" id="province" value="" />\
		<input type="hidden" id="city" value="" />\
		<input type="hidden" id="town" value="" />\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>支行名称：</dt>\
		<dd><input id="branch_name" name="" type="text" class="inputtext01" placeholder="请以“支行”结尾，如：科技园支行" /></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>银行卡号：</dt>\
		<dd><input id="bank_no" name="" type="text" class="inputtext01" placeholder="" /></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>确认银行卡号：</dt>\
		<dd><input id="bank_no_repeat" name="" type="text" class="inputtext01" placeholder="" />\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>图形验证码：</dt>\
		<dd ><input id="captcha" type="text" class="inputtext02" value=""/><span style="vertical-align: middle;display: inline-block;padding-left: 10px;" id="img_captcha" ></span></dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>手机验证码：</dt>\
		<dd>\
		<input id="sms_captcha" name="" type="text" class="inputtext02" />\
		<a href="javascript:void(0)" id="send_voice" class="sub04 autosub">发送验证码</a>\
		<!--<span class="paddingleft">或</span><a  id="send_sms" href="javascript:void(0)" class="sub04 autosub">短信验证码</a>-->\
		<p>\
		<span class="gray"><i class="AllIcon iconi"></i>您绑定的手机号码是<font id="show_mobile_no"></font></span>\
		</p>\
		<p id="voice_tip_view" style="display:none;"><span style="width:14px; height:14px; background:url(/2.0/images/tip-s5a01e083c6.png) no-repeat; background-position:-1px -247px; display:inline-block; vertical-align:middle; margin:0 5px 3px 3px;"></span><font style="font-size: 15px;color: #e1b43d;">正在给您致电，请注意接听</font></p>\
		</dd>\
		<div class="clear"></div>\
		</dl>\
		<dl>\
		<dt>&nbsp;</dt>\
		<dd>\
		<p id="error_info" style="display:none;" class="red"></p></dd>\
		</dl>\
		<dl class="settingsub">\
		<dt>&nbsp;</dt>\
		<dd><a href="javascript:modifyBankInfo.check();" class="sub02">保存银行卡信息</a></dd>\
		<div class="clear"></div>\
		</dl>\
		</div>\
		<div class="success-msg msg-font"><i class="AllIcon iconi left"></i><span class="left gray"><p>保存银行卡信息：请务必填写真实信息，账户资金只能提现至真实姓名与之对应的银行账号</p>\
		</span><div class="clear"></div></div>\
		</div>\
		</div>\
		</div>';

	var modifyBankInfoAndAuthSuccessHtml=
		'<div class="dialog_wbox dialog_bank" style="width:510px;"><div class="dialog_success">\
		<h3><i class="AllIcon icondagou"></i><b>恭喜您银行卡认证成功，获得<span class="red">4元</span>投资礼金！</b></h3>\
		<div class="dialogsub">\
		<a href="javascript:location.reload();" class="sub02">确 定</a>\
		</div>\
		</div></div>';

	var modifyBankInfoSuccessHtml=
		'<div class="dialog_wbox dialog_bank" style="width:450px;"><div class="dialog_success">\
		<h3 id="msg_view_1"><i class="AllIcon icondagou"></i><b>恭喜您修改银行卡信息认证成功！</b></h3>\
		<h3 id="msg_view_2" style="display:none;"><i class="AllIcon icondagou"></i><b>银行卡信息修改成功！</b></h3>\
		<ul>\
		<li class="lifont" id="tip_msg_view_1" style="display:none;">银行卡认证在首次提现成功后1-3个工作日内生效</li>\
		<li class="lifont">首次银行卡认证将获赠<span class="red">4元</span>银行卡认证礼金</li>\
		</ul>\
		<div class="dialogsub subhover">\
		<a id="modify_suc_btn_1" href="../../../my/rechargec-quick=1;.htm"/*tpa=https://xin/my/rechargec?quick=1;*/  class="sub02">去充值认证<span class="infobox">需用无网银快捷安全支付充值至少2元，充值成功后该银行卡立即锁定；提现银行卡将不能更改<b><img src="../../images/bicon.png"/*tpa=https://xin/2.0/images/bicon.png*/ /></b></span></a>\
		<a id="modify_suc_btn_2" href="javascript:location.reload();" class="sub02" style="display:none;">确 定</a>\
		</div>\
		</div></div>';

</script>

<script>
	modifyBankInfo={
		box:null,
		seed:new Date().getTime(),
		countDownTime:0,
		isCheckedBankCard:0,
		show:function(){
			var wBox=$.dialog({
				'title':'银行账户修改',
	    		'padding':'0px 0px 0px 30px',
	      		'content':checkMobileCaptchaHtml,
	       		'initialize':function () {

	      		}
			});
			modifyBankInfo.box=wBox;
		},
		showModifyWin:function(){
			modifyBankInfo.box.close();
			modifyBankInfo.countDownTime=0;
			UserAPI.GetPersonalInfo({},function(rs){
				UserAPI.Auth.getIdAuthInfo({},function(result){
					if(result.state==0||result.state==1002){
						var wBox=$.dialog({
							'title':'银行账户修改',
				        	'padding':'0px 0px 0px 30px',
				        	'content':modifyBankInfoHtml,
				       		'initialize':function () {

				       		}
						});

						modifyBankInfo.getImgCaptcha();
						modifyBankInfo.initEvent();

						$('#show_mobile_no').html(rs.telephone);
						modifyBankInfo.isCheckedBankCard=rs.isCheckedBankCard;
						$('#real_name').html(rs.realName);
						$('#cert_no').html("(身份证号码："+rs.idcard+")");
						showLocation();
						modifyBankInfo.box=wBox;
					}
				});
			});

		},
		initEvent:function(){
			/*$('#send_sms').unbind("click").bind('click',function(){
				modifyBankInfo.sendMobileCaptcha(0);
			});*/
			$('#send_voice').unbind("click").bind('click',function(){
				modifyBankInfo.sendMobileCaptcha(1);
			});
		},
		sendMobileCaptcha:function(type){
			var captcha=$('#captcha').val();

			if(captcha.length!=4){
				modifyBankInfo.showErrMsg('请正确输入图形验证码');
				return;
			}

			modifyBankInfo.hideErrMsg();

			UserAPI.SendMobileCaptcha({type:type,captcha:captcha,seed:modifyBankInfo.seed},function(result){
				if(result.state==1){
					modifyBankInfo.countDownTime=120;
					modifyBankInfo.countDownCaptcha1();
					modifyBankInfo.showVoiceTip();
				}else{
					modifyBankInfo.countDownTime=0;
					if(result.state==1001||result.state==1000){
						modifyBankInfo.box.close();
						Login.show();
					}else if(result.state==2010){
						modifyBankInfo.showErrMsg('图形验证码输入错误,请点击图形刷新重试');
					}else if(result.state==2019){
						modifyBankInfo.showErrMsg('等待120秒后再重试');
					}else{
						modifyBankInfo.showErrMsg('系统繁忙，稍后请重试');
					}
				}
			});
		},
		countDownCaptcha1:function(){
			if(modifyBankInfo.countDownTime>0){
				modifyBankInfo.countDownTime--;
				$('#send_voice').removeClass("sub04").addClass("sub01").html('(' + modifyBankInfo.countDownTime + 's)重发');
				$('#send_voice').unbind("click");
				//$('#send_sms').removeClass("sub04").addClass("sub01").html('(' + modifyBankInfo.countDownTime + 's)重发');
				//$('#send_sms').unbind("click");
				setTimeout("modifyBankInfo.countDownCaptcha1()", 1000);
			}else{
				modifyBankInfo.countDownTime=120;
				$('#send_voice').removeClass("sub01").addClass("sub04").html('发送验证码');
				$('#send_voice').unbind("click").bind('click',function(){
					modifyBankInfo.sendMobileCaptcha(1);
				});
				//$('#send_sms').removeClass("sub01").addClass("sub04").html('验证码');
				/*$('#send_sms').unbind("click").bind('click',function(){
					modifyBankInfo.sendMobileCaptcha(0);
				});*/

				$('#captcha').val('');

				modifyBankInfo.getImgCaptcha();
			}
		},
		showVoiceTip:function(){
			$('#voice_tip_view').show();
			setTimeout(function(){
				$('#voice_tip_view').hide();
			},100000);
		},
		getImgCaptcha:function(){
			modifyBankInfo.seed=new Date().getTime();

			$('#img_captcha').html('<img onclick="modifyBankInfo.getImgCaptcha();" src="/v2/login/get_captcha.raw?seed='+modifyBankInfo.seed+'"   width="100" height="34" />');
		},
		showQuickAuth:function(){
			modifyBankInfo.box.close();
			BankQuickAuthWin.show({real_name:$('#real_name').html(),cert_no:$('#cert_no').html()});
		},
		checkIdentity:function(){
			var certNo=$.trim($('#validate_cert_no').val());
			var realName=$('#validate_real_name').val();

			if(realName == ''){
				modifyBankInfo.showErrMsg('真实姓名不能为空');
				return;
			}
			if(certNo == ''){
				modifyBankInfo.showErrMsg('身份证号不能为空');
				return;
			}
			if(certNo.length != 18){
				modifyBankInfo.showErrMsg('身份证号必须为18位');
				return;
			}

			modifyBankInfo.hideErrMsg();

			UserAPI.Auth.getIdAuthInfo({},function(result){
				if(result.state==0){
					UserAPI.Auth.ValidateIdentityInfo({realName:realName,certNo:certNo},function(rs){
						if(rs.state==1){
							modifyBankInfo.showModifyWin();
						}else{
							modifyBankInfo.showErrMsg('输入身份证信息有误,请重新输入');
						}
					});
				}else{
					modifyBankInfo.showErrMsg('实名认证未通过,请先进行银行卡身份认证');
				}
			});
		},
		check:function(){
			modifyBankInfo.countDownTime=0;
			var bank_name = $("#bank_name :selected").text();
			var loc_province = $("#loc_province :selected").text();
			var loc_city = $("#loc_city :selected").text();
			var loc_town = $("#loc_town :selected").text();

			var loc_province_val = $("#province").val();
			var loc_city_val =  $("#city").val();
			var loc_town_val =  $("#town").val();

			var branch_name = $("#branch_name").val();
			var bank_no = $.trim($("#bank_no").val());
			var bank_no_confirm= $.trim($("#bank_no_repeat").val());


			if(bank_name == '请选择银行' ){
				modifyBankInfo.showErrMsg('请选择银行');
				return;
			}

			if(branch_name == ''){
				modifyBankInfo.showErrMsg('支行名称不能为空');
				return;
			}
			if(bank_no == ''){
				modifyBankInfo.showErrMsg('银行卡号不能为空');
				return;
			}
			if(isNaN(bank_no)){
				modifyBankInfo.showErrMsg('银行卡号只能为数字');
				return;
			}

			if(bank_no_confirm!=bank_no){
				modifyBankInfo.showErrMsg('两次输入银行卡号不一致');
				return;
			}
			
			if(bank_no.length>4){
				var card=BANK_CARD.getCardInfo(bank_no,4);
				if(typeof card =='object' && card !=null){
					if(bank_no.length!=card.codelen){
						modifyBankInfo.showErrMsg('银行卡号应为'+card.codelen+'个数字!');
						return;
					}else if(card.bank!=bank_name){
						modifyBankInfo.showErrMsg("您写的银行卡号与已选的开户银行不匹配");
						return;
					}
				}else{
					modifyBankInfo.showErrMsg("您写的银行卡号与已选的开户银行不匹配");
					return;
				}
			}else{
				modifyBankInfo.showErrMsg("您写的银行卡号与已选的开户银行不匹配");
				return;
			}
			
			if( (loc_province == '请选择省份' && loc_city == '请选择城市' &&  loc_town == '请选择地区' )
					&& (loc_province_val != '' && loc_city_val!= '' && loc_town_val != '') ){
					loc_province = loc_province_val;
					loc_city = 	loc_city_val;
					loc_town = loc_town_val;
			}else{
				if(loc_province == '请选择省份'){
					modifyBankInfo.showErrMsg('请选择省份');
					return;
				}
				if(loc_city == '请选择城市'){
					modifyBankInfo.showErrMsg('请选择城市');
					return;
				}
				if(loc_town == '请选择地区'){
					modifyBankInfo.showErrMsg('请选择地区');
					return;
				}
			}

			var smsCaptcha=$('#sms_captcha').val();

			if(smsCaptcha.length!=6){
				modifyBankInfo.showErrMsg('手机验证码输入错误');
				return;
			}

			modifyBankInfo.hideErrMsg();

			var quick_auth_bank_type='8';

			var city = loc_province+ ' ' + loc_city + ' ' +　loc_town;

			UserAPI.Auth.QuickAuth({realname:'name',
				identifyNo:'no',
				bankName:bank_name,
				city:city,
				batchName:branch_name,
				bankNo:bank_no,
				smsCaptcha:smsCaptcha,
				type:quick_auth_bank_type},
				function(result){
					if(result.state==0){
						if(result.data>0){
							if(result.data > 10){
								modifyBankInfo.authSuccess();
							}else{
								modifyBankInfo.success();
							}
						}else{
							modifyBankInfo.success();
						}
					}else{
						if(result.state == 1001){
							modifyBankInfo.showErrMsg('身份证已存在');
							return;
						}else if(result.state==2100){
							modifyBankInfo.showErrMsg('认证失败，请联系客服');
							return;
						}else if(result.state==5001){
							modifyBankInfo.showErrMsg('填写资料有误，请仔细核对信息');
							return;
						}else if(result.state==5002){
							modifyBankInfo.showErrMsg('请正确填写身份证号');
							return;
						}else if(result.state==2011){
							modifyBankInfo.showErrMsg('手机验证码错误，请重试');
						}else if(result.state==2019){
							modifyBankInfo.showErrMsg('等待120秒后再重试');
						}else{
							modifyBankInfo.showErrMsg('系统繁忙，稍后请重试');
						}
					}
				}
			);
		},
		authSuccess:function(){
			modifyBankInfo.box.close();
			var wBox=$.dialog({
				'title':'银行账户修改',
				'padding':'10px 0px 10px 0px',
	        	'content':modifyBankInfoAndAuthSuccessHtml,
	        	'initialize':function () {

	        	}
			});
			modifyBankInfo.box=wBox;
		},
		success:function(){
			modifyBankInfo.box.close();
			UserAPI.BaseInfo({},function(result){
				if(result.state == 0){
					var isCheckedBankCard = result.isCheckedBankCard;
					var wBox=$.dialog({
						'title':'银行账户修改',
						'padding':'0px 0px 10px 0px',
	        			'content':modifyBankInfoSuccessHtml,
	        			'initialize':function () {
							if(isCheckedBankCard == 1){
								$('#msg_view_1').show();
								$('#msg_view_2').hide();
								$('#tip_msg_view_1').hide();
								$('#modify_suc_btn_1').hide();
								$('#modify_suc_btn_2').show();
							}else{
								$('#msg_view_1').hide();
								$('#msg_view_2').show();
								$('#tip_msg_view_1').show();
								$('#modify_suc_btn_2').hide();
								$('#modify_suc_btn_1').show();
							}
	     				}
					});
					modifyBankInfo.box=wBox;
				}
			});
		},
		showErrMsg:function(msg){
			$("#error_info").html('<i class="AllIcon iconx"></i>'+msg).show();
		},
		hideErrMsg:function(){
			$("#error_info").html('').hide();
		}
	}
</script>

<div  id="sidebar-login-box" style="display: none; ">
<div class="wgt-dialog wgt-dialog-login" >
    <fieldset class="ui-form">
        <form id="rapid-login-form" method="post" action="https://xin/v2/login/login.jso">
            <h3 class="wgt-dialog-title">信融财富用户登录</h3>
            <div class="ui-form-line">
                <label for="username" class="ui-form-label">账　号：</label>
                <input type="text" name="username" id="rapid-userName" class="ui-form-input" maxlength="50" tabindex="1" placeholder="账户名 / Email / 手机号"/>
                <a href="register4.0.shtml.htm" tppabs="https://xin/2.0/views/account/register4.0.shtml" class="blue" target="_blank">注册账号</a>
            </div>
            <div class="ui-form-line">
                <label for="password" class="ui-form-label">密　码：</label>
                <input type="password" name="password" id="rapid-userPw" class="ui-form-input" maxlength="16" tabindex="2" placeholder="登录密码"/>
                <a href="back_password.shtml.htm" tppabs="https://xin/2.0/views/account/back_password.shtml" class="blue" target="_blank">忘记账号/密码？</a>
            </div>
            <div class="ui-form-line ui-form-captcha" id="captcha_view" style="display:none">
                <label for="rapid-captcha" class="ui-form-label">验证码：</label>
                <input type="text" id="rapid-captcha" name="captcha" class="ui-form-input" autocomplete="off" maxlength="4" tabindex="3" placeholder="验证码"/>
                <span id="rapid-captcha-placeholder" class="captcha-placeholder"><img src="" width='101' height='31' id='img-captcha' title='看不清楚？换一个' /></span>
                <input type="hidden" id="rapid-seed" name="seed" value=""/>
            </div>
            <div class="ui-form-line ui-form-action">
                <input  type="submit" class="ui-button ui-button-orange" style="width: 234px;height: 36px;line-height: 36px;" tabindex="4" value="登 录" />
                
                <em class="ui-tip"></em>
                <img src="../../images/Connect_logo_7.png" tppabs="https://xin/2.0/images/Connect_logo_7.png" onclick=" AA.RapidLogin.qqClick();" style="cursor:pointer; margin-left:8px;"></img>
            </div>
            <style>
            .login-succ{ margin:auto; width:290px; height:210px; position:fixed; left:0; right:0px; top:0px; bottom:0px; z-index:999; filter:progid:DXImageTransform.Microsoft.gradient(enabled='true',startColorstr='#CC000000', endColorstr='#CC000000'); border-radius:8px; text-align:center;}
            :root .login-succ{ filter:none; background-color:rgba(0,0,0,0.5);}
            .login-succ h1{ font-size:24px; color:#fff; padding-top:60px; font-weight:normal; position:relative;}
            .login-succ img{ vertical-align:middle;padding:0px 10px 0 0;}
            .login-succ span{ vertical-align:middle; padding: 26px 0 0 0;  display: inline-block;}
            </style>
            <div id="login_suc_dialog" style="display: none;">
            <div class="login-succ">
            <h1><img src="../../images/c-login1.gif" tppabs="https://xin/2.0/images/c-login1.gif" width="68" height="93" /><span><i class="icondagou"></i>登录成功</span></h1>
            </div>
            </div>
        </form>
    </fieldset>
</div> 

</div>
<script type="text/javascript" src="../../js/rsa.js" tppabs="https://xin/2.0/js/rsa.js"></script>
<script type="text/javascript" src="../../../webapp2.0/js/wbox.js" tppabs="https://xin/webapp2.0/js/wbox.js"></script>
<link rel="stylesheet" href="../../css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css">
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="../about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" target="_blank">关于我们</a></h2><p><a href="../about/team.shtml.htm" tppabs="https://xin/2.0/views/about/team.shtml" target="_blank">团队介绍</a></p><p><a href="../about/xr_history.shtml.htm" tppabs="https://xin/2.0/views/about/xr_history.shtml" target="_blank">发展历程</a></p><p><a href="../about/xr_credit.shtml.htm" tppabs="https://xin/2.0/views/about/xr_credit.shtml" target="_blank">资质荣誉</a></p><p><a href="../about/partner.shtml.htm" tppabs="https://xin/2.0/views/about/partner.shtml" target="_blank">合作机构</a></p></li>
<li><h2><a href="../about/help.shtml.htm" tppabs="https://xin/2.0/views/about/help.shtml" target="_blank">帮助中心</a></h2><p><a href="../about/guide/guide1.shtml.htm" tppabs="https://xin/2.0/views/about/guide/guide1.shtml" target="_blank">新手指引</a></p><p><a href="../about/help.shtml-tab=tab1.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab1" target="_blank">问题答疑</a></p><p><a href="../about/help.shtml-tab=tab10.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab10" target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum-49-1.html'" tppabs="http://bbs.xinrong.com/forum-49-1.html" target="_blank">意见反馈</a></p></li>
<li><h2><a href="../about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" target="_blank">信息中心</a></h2><p><a href="../about/xr_announcement.shtml.htm" tppabs="https://xin/2.0/views/about/xr_announcement.shtml" target="_blank">平台公告</a></p><p><a href="../about/media_report.shtml.htm" tppabs="https://xin/2.0/views/about/media_report.shtml" target="_blank">媒体报道</a></p><p><a href="../about/activitysum.shtml.htm" tppabs="https://xin/2.0/views/about/activitysum.shtml" target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum.php'" tppabs="http://bbs.xinrong.com/forum.php" target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="../../vip.html" tppabs="https://xin/2.0/vip.html" target="_blank">VIP特权</a></p><p><a href="../../../gift.htm" tppabs="https://xin/gift" target="_blank">积品汇</a></p><p><a href="../../../action/jf.htm" tppabs="https://xin/action/jf" target="_blank">抽奖</a></p></li>
</ul>
</div>
<div class="footer_contact left">
<h2>网贷有风险    投资需谨慎</h2>
<h3><span ><i class="AllIcon"></i>400-777-9888</span></h3>
<p>周一至周五9:00 - 18:30</p>
<p class="gray">官方QQ群：167877489</p>
<div class="con_pic">
<ul>
<li class="fb01"><a href="javascript:void(0)"><i class="AllIcon icon01"></i></a>
<ul class="weix_box"><b></b><li><img src="../../../s/img/w02.jpg" tppabs="https://xin/s/img/w02.jpg" width="100"><h4>关注服务号</h4></li><li><img src="../../../s/img/w05.jpg" tppabs="https://xin/s/img/w05.jpg" width="100"><h4>关注订阅号</h4></li><li><img src="../../../s/img/w06.jpg" tppabs="https://xin/s/img/w06.jpg" width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'" tppabs="http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5" title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><img src="../../images/qq.png" tppabs="https://xin/2.0/images/qq.png" width="120"><h4>QQ号：4007779888</h4></li>
</ul></li>
<li class="fb03"><a href="javascript:if(confirm('http://weibo.com/u/2719695463?profile_ftype=1&is_all=1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0'" tppabs="http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0" target="_blank" title="微博"><i class="AllIcon icon03"></i></a></li>
</ul>
</div>
</div>
<div class="footer_app right">
  <img src="../../../s/img/w07.jpg" tppabs="https://xin/s/img/w07.jpg" width="122" class="bimg" /><h2>下载手机客户端<i class="AllIcon icon01"></i> <i class="AllIcon icon02"></i></h2> </div>
<div class="black10"></div>
</div>
</div><!--end-->
<div class="clear"></div>
<div class="footer_pic">
<ul>
<li><a target="_blank" href="javascript:if(confirm('http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86'" tppabs="http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86" title="深圳市市场监督管理局企业主体身份公示"><i class="icon01"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN'" tppabs="https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN" title="信融财富是中国首批引入VeriSign 256位SSL加密的融资理财平台。您的隐私及个人资料安全已受最高级别的保护。"><i class="icon03"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401'" tppabs="http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401" title="中国信用企业"><i class="icon02"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://search.szfw.org/cert/l/CX20140805008628008716  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://search.szfw.org/cert/l/CX20140805008628008716'" tppabs="https://search.szfw.org/cert/l/CX20140805008628008716" title="诚信网站"><i class="icon04"></i></a></li>
<li><a title="腾讯云安全认证"><i class="icon05"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business'" tppabs="http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business" title="安全联盟认证网站"><i class="icon06"></i></a></li>
</ul>
</div>
<div class="clear"></div>
<div class="footer_font main"><p> <a href="../../../about/privacy.htm" tppabs="https://xin/about/privacy" target="_blank">隐私保护申明</a> 　|　 <a href="../../../about/agreement.htm" tppabs="https://xin/about/agreement" target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright Xinrong.com All Rights Reserved   信融财富投资管理有限公司</div>
</div>

<style>
.d-dialog{ border: 1px solid #0078b5; background:#fff;}
.d-dialog h1{ height: 30px; line-height: 30px; padding: 0 28px 0 10px; color: #fff; background: #74b4e2; background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #74b4e2), color-stop(100%, #3d8fca) ); background-image: -webkit-linear-gradient(#74b4e2, #3d8fca); background-image: -moz-linear-gradient(#74b4e2, #3d8fca); background-image: -o-linear-gradient(#74b4e2, #3d8fca); background-image: linear-gradient(#74b4e2, #3d8fca); position:relative; font-size:14px;}
.d-dialog h1 .d-close { padding: 0; position:absolute; top: 4px; right: 4px; width: 21px; height: 21px; line-height: 21px; font-size: 25px; _font-size: 20px; color: #fff; text-align: center; font-family: Helvetica, STHeiti; _font-family: Tahoma, '\u9ed1\u4f53', 'Book Antiqua', Palatino;text-decoration: none; display:block;outline: none;}

.d-dialog .call_font{ padding:50px 40px 20px 40px; line-height:24px; font-size:16px;width:350px}
.d-dialog .call_sub{ padding:20px 0 0 0; text-align:center;}
.d-dialog .call_sub .sub01{ width:156px; height:45px; line-height:43px; text-align:center; background:#15a32c; font-size:20px;}
.d-dialog .call_sub .sub02{ width:156px; height:45px; line-height:43px; text-align:center; background:#c8c8c8; font-size:20px;}
.d-dialog .c_font{ text-align:center; padding-left:0px; padding-right: 0px;}
</style>
<script>
$(function(){
	//免费咨询电话
	/*$('.ftel').click(function(){
		$.dialog({
			id:'tel',
			content:$('#free_tel_box').html(),
			initialize:function(){
				var _dialog = this;
				$('.d-dialog #free_tel_btn').click(function(){
					$.ajax({
						url:'../../../v2/communication/free_consulation.jso'/*tpa=https://xin/v2/communication/free_consulation.jso*/,
						type:'post',
						dataType:'json',
						success:function(result){
							if(result.state == 0){
								$('.d-dialog #free_tel_btn').removeClass().addClass('sub02').html('请接听');
								$('.d-dialog #free_tel_btn').unbind('click').click(function(){
									_dialog.close();
								});
							}else if(result.state == 1009){
								_dialog.close();
								AA.RapidLogin.popup();
							}else{
								_dialog.close();
								$.dialog({
									id:'tel_msg',
									content:$('#free_tel_msg_box').html(),
									initialize:function(){
										var _dialog = this;
										$('.d-dialog #msg_view').html(result.msg);
										$('.d-dialog #free_tel_msg_btn').click(function(){
											_dialog.close();
										});
									}
								});
							}
						}
					});
				});
			}
		});
	});*/
});
</script>
<div id="free_tel_box" style="display:none;">
<div class="call_font" >
点击通话，<font  >致电给信融财富</font>，
稍后您将接到回拨电话，此次通话对您<span class="blue">完全免费</span>，请放心接听！
</div>
<div class="call_sub"><a id="free_tel_btn" href="javascript:void(0)" class="sub01">通话</a></div>
<div class="black20"></div>
</div>
<div id="free_tel_msg_box" style="display:none;">
<div class="call_font c_font" id="msg_view">
</div>
<div class="call_sub"><a id="free_tel_msg_btn" href="javascript:void(0)" class="sub01">确定</a></div>
<div class="black20"></div>
</div>

<script type="text/javascript" src="../../js/channel.js" tppabs="https://xin/2.0/js/channel.js"></script>
<script>
var _hmt = _hmt || [];
(function() {
	var agent=navigator.userAgent;

	if(agent.indexOf('android')==-1&&agent.indexOf('Android')==-1){
		var hm = document.createElement("script");
		hm.src = "../../../../hm.baidu.com/hm.js-a5ef11ea1e672f6b504ec7fe5a92cf30"/*tpa=https://hm.baidu.com/hm.js?a5ef11ea1e672f6b504ec7fe5a92cf30*/;
		 var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	}
})();
</script>
<script>
(function() {
	$.ajax({
		url:'../../../v2/login/in_session_data.jso'/*tpa=https://xin/v2/login/in_session_data.jso*/,
	    type:'GET' ,
	    dataType:'json',
	    success:function (result) {
	    	if(result.state==0){
	    		G_ENV_VAR.IS_CHECKED_EMAIL=result.isAuthEmail==0?false:true;
	    		G_ENV_VAR.IS_CHECKED_MOBILE=result.isAuthMobile==0?false:true;
	    		G_ENV_VAR.IS_CHECKED_IDENTIFICATION=result.isAuthIden==0?false:true;
	    		G_ENV_VAR.IS_CHECKED_BANKCARD=result.isAuthBankCard==0?false:true;
	    		G_ENV_VAR.UNAME=result.uname;
	    		G_ENV_VAR.UID=result.uid;
	    		G_ENV_VAR.VIP=result.vip;

	    		if(G_ENV_VAR.UID!=''&&G_ENV_VAR.UID>0){
	    			$('#top_exit').show();
					
	    		}

	    	}else if(result.state == 1009){
				$('.h-login-reg').show();
				}

	    }
	});

})();
</script>
<!--footer end-->


<script type="text/javascript" src="../../js/www/account/account_settings.js" tppabs="https://xin/2.0/js/www/account/account_settings.js"></script>
<script type="text/javascript" src="../../js/www/bank_cards.js" tppabs="https://xin/2.0/js/www/bank_cards.js"></script>
<script type="text/javascript">



$(document).ready(function() {


    load_data();
//
//    $("#investAll").bind("click",function () {
//        showCusInvest(false);});
//    $("#investCus").bind("click",function () {
//        showCusInvest(true);});

    $("#rate").on("blur",function () {
        var rate = parseFloat($("#rate").val()).toFixed(2);
        if(isNaN(rate)){
            $("#rate").val('');
		}else {
            $("#rate").val(rate);
		}
    });

    $("#customMoney").on("blur",function () {
        var customMoney = parseInt($("#customMoney").val());
        if(isNaN(customMoney)){
            $("#customMoney").val(0);
        }else {
            $("#keep_money").val(customMoney);
        }
	});

	$("#invest_money").on("blur",function () {
        var invest_money = parseInt($("#invest_money").val());
        if(isNaN(invest_money)){
            $("#invest_money").val('');
        }else {
            $("#invest_money").val(invest_money);
        }
	});


	$(".hmenu_nav ul li").each(function(){
		var _li = $(this);
		var _a = _li.find("a");

		if(_a.html()=="账户"){
			_li.addClass('cur');
			_a.addClass('cur');
		}else{
			_li.removeClass();
			_a.removeClass();
		}
	});
	
	
	var tab = getUrlParam('tab')||1;
	$("#tabsholder").tytabs({
		tabinit:tab,
		fadespeed:"fast"
	});
	


//	$('#tab3').click(function(){
//		window.location.href = '../../../my/autoinvest.htm'/*tpa=https://xin/my/autoinvest*/;
//	});
	
	$('#tab4').click(function(){
		window.location.href = '../../../my/msgremind.htm'/*tpa=https://xin/my/msgremind*/;
	});
});
$(window).load(function(){
	var isAnswer = getUrlParam('goAnswer')||null;
	var afterAnswer=sessionStorage.getItem('afterAnswer')||null;
	if (isAnswer == 'true' &&afterAnswer == 'null') {
		AccountSettings.showRiskDialog();
		sessionStorage.setItem('afterAnswer',true);
		//更换url 转换
		var url=document.location.href;
		if(url.match("goAnswer")){
			url=url.substring(0,url.indexOf("?goAnswer"));
			history.replaceState(null, document.title, url);
		}
	}
})

</script>

<div id="showHidediv" style="display: none;">
    <div class="borrowingdialog" style="width:480px;">
    <h2 style="text-align: center;padding: 30px 0 30px 0;font-size: 13px;">解绑操作需验证你的登录密码，解绑成功后请使用信融账号密码登录</h2>
    <span style="padding-top: 3px;font-size: 14px;text-align: center;display: block;">登录密码：<input type="password" id="loginpassword" onfocus="clearErrorTip();"></input></span>
   	<p style="padding-left:205px;padding-top: 3px;"><i class="iconx" style="display: none;" id="error_icon"></i><font color="red" id="qqunbinderror"></font></p>
    <span class="cusssub" style="padding: 20px 0 40px 30px;"><a href="javascript:beforeunbind();" class="accsub01">解除绑定</a></span>
    </div><!--end-->
</div>
<div id="wbox_emergency" style="display: none;">
<div id="emergency_box_1" class="dialog_wbox dialog_settings" style="width: 550px;"  >
<h2><i class="AllIcon icondai"></i>请输入您的紧急联系人信息</h2>
<dl>
<dt>真实姓名：</dt>
<dd><input name="" type="text" class="inputtext01" id="emergencyName" title="请输入2位以上的纯汉字或纯英文"  placeholder="2位以上的纯汉字或纯英文"/></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>手机号码或电话：</dt>
<dd><input name="" type="text" class="inputtext01" id="emergencyMobile" title="请输入11位手机号码或座机(ps:座机前请加区号)" placeholder="11位手机号码或座机(ps:座机前请加区号)"/></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>与您的关系：</dt>
<dd><select class="inputtext02" id="emergencyType">
<option value="0">配偶</option>
<option value="1">其他</option>
<option value="2">父母</option>
<option value="3">子女</option>
<option value="4">兄弟姐妹</option>
<option value="5">同事</option>
<option value="6">同学</option></select></dd>
<div class="clear"></div>
</dl>
<dl>
<dt>&nbsp;</dt>
<dd><p class="red" id="emergencyError" ></p></dd>
<div class="clear"></div>
</dl>
<dl class="settingsub">
<dt>&nbsp;</dt>
<dd><a href="javascript:void(0)" class="sub02" id="emergency_next_btn">下一步</a></dd>
<div class="black20"></div>
</dl>
</div>
<div id="emergency_box_2" class="dialog_wbox dialog_address" style="display:none;">
<dl>
<dt><i class="AllIcon icondai"></i></dt>
<dd><h3>请确认您的紧急联系人信息</h3>
<ul class="address_list">
<li id="confirm_emergency"></li>

</ul>
<ul class="address_list">
<li id="emergencyError1"></li>
</ul>
</dd>
<dd><p class="red"  ></p></dd>
<div class="clear"></div>
</dl>
<div class="dialogsub"><a id="emergency_confirm_btn" href="javascript:void(0)" class="sub03">确定提交</a> <a id="emergency_back_btn" href="javascript:void(0)" class="sub01">返回修改</a></div>
</div>
</div>

<script type="text/javascript" src="../../js/autoinvest.js" tppabs="https://xin/2.0/js/autoinvest.js"></script>

<!-- <div id="wbox_esw_create" style="display: none;">
	<div  class="dialog_wbox fast_box" >
	<h4 style="line-height:40px">&nbsp;&nbsp;&nbsp;请务必填写真实信息，账户资金只能提现至真实姓名与之对应的银行账号</h4>
	<dl>
	<dt>真实姓名：</dt>
	<dd><input id="esw_real_name" type="text" class="inputtext01 textborder auth_real_name" value=""/></dd>
	<div class="clear"></div>
	</dl>
	<dl>
	<dt>身份证号：</dt>
	<dd><input id="esw_cert_no" type="text" class="inputtext01" value=""/></dd>
	<div class="clear"></div>
	</dl>
	<dl>
	<dt>开户银行：</dt>
	<dd>
		<select id="esw_bank_name" class="select01" style="width:140px">
		<option >中国农业银行</option>
		<option >中国银行</option>
		<option >中国建设银行</option>
		<option >中国光大银行</option>
		<option >兴业银行</option>
		<option >中国民生银行</option>
		<option >中信银行</option>
		<option >平安银行</option>
		<option >交通银行</option>
		<option>中国工商银行</option>
		<option>招商银行</option>
		<option>宁波银行</option>
		<option>浦发银行</option>
		<option>杭州银行</option>
		<option>广发银行股份有限公司</option>
		</select>
		<span class="tips" id="bank_tips_info"><i class="AllIcon iconi"></i>开户姓名必须与真实姓名一致</span>
	</dd>
	<div class="clear"></div>
	</dl>
	<dl>
	<dt>开户行所在地：</dt>
	<dd>
		<select id="loc_province" class="select01" ></select>
		<span class="paddingtleft">
			<select id="loc_city" class="select01">
			</select>
		</span>
		<span class="paddingtleft">
			<select id="loc_town" class="select01">
			</select>
		</span>
		<input type="hidden" name="esw_location_id" />
	</dd>
	<input type="hidden" id="esw_province" value="" />
	<input type="hidden" id="esw_city" value="" />
	<input type="hidden" id="esw_town" value="" />
	<div class="clear"></div>
	</dl>
	<dl>
	<dt>支行名称：</dt>
	<dd><input id="esw_branch_name" type="text" class="inputtext01" value="" placeholder="请以“支行”结尾，如：科技园支行" /></dd>
	<div class="clear"></div>
	</dl>
	<dl>
	<dt>银行卡号：</dt>
	<dd><input id="esw_bank_no" type="text" class="inputtext01" value=""/></dd>
	<div class="clear"></div>
	</dl>
	<dl>
	<dt>手机号：</dt>
	<dd><input id="esw_mobile" type="text" class="inputtext01" value="" readonly="readonly" /></dd>
	<div class="clear"></div>
	</dl>
	<dl>
	<dt>图形验证码：</dt>
	<dd ><input id="esw_captcha" type="text" class="inputtext02" value=""/><input type="hidden" id="esw_captcha_seed" value="" /><span style="vertical-align: middle;display: inline-block;padding-left: 10px;" ><img id="esw_img_captcha" src="" width="100" height="34" /></span></dd>
	<div class="clear"></div>
	</dl>
	<dl>
	<dt>手机验证码：</dt>
	<dd>
	<input id="esw_sms_captcha" name="" type="text" class="inputtext02" /><input type="hidden" id="esw_auth_code" value="" />
	<a href="javascript:void(0)" id="esw_send_sms" class="sub04 autosub">发送验证码</a>
	</dd>
	<div class="clear"></div>
	</dl>
	<dl>
	<dt>账户类型：</dt>
	<dd>
	<select id="esw_user_type">
		<option value="0">普通账户</option>
		<option value="1">红包账户</option>
		<option value="2">手续费账户</option>
		<option value="3">担保账户</option>
	</select>	
	</dd>
	<div class="clear"></div>
	</dl>
	<dl class="error">
	<dt>&nbsp;</dt>
	<dd class="red" style="display:none" id="esw_error_info"><i class="AllIcon iconx"></i>-</dd>
	<div class="clear"></div>
	</dl>
	<dl>
	<dt>&nbsp;</dt>
	<dd><a href="javascript:void(0)" id="esw_step_one_next1"  class="sub02">下一步</a></dd>
	<div class="clear"></div>
	</dl>
	<div style="padding:20px 20px;" class="settings_tips gray">
	<i class="AllIcon iconi"></i>认证账号的姓名、手机号码必须与银行开户姓名、银行预留手机号完全一致才能通过认证，请务必仔细填写。 <br>&nbsp; &nbsp;&nbsp; &nbsp;银行卡认证仅支持借记卡，不支持信用卡和存折
	</div>
	</div>
</div> -->
</body>
</html>