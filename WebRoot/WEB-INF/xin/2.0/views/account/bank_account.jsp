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

  <link href="../../css/account/esw_account.css" tppabs="https://xin/2.0/css/account/esw_account.css" rel="stylesheet" type="text/css">

  <link href="../../css/Account.css" tppabs="https://xin/2.0/css/Account.css" rel="stylesheet" type="text/css" />
  <link href="../../css/basic.css" tppabs="https://xin/2.0/css/basic.css" rel="stylesheet" type="text/css" />
  <link href="../../css/dialog.css" tppabs="https://xin/2.0/css/dialog.css" rel="stylesheet" type="text/css" />
  <link href="../../css/global.css" tppabs="https://xin/2.0/css/global.css" rel="stylesheet" type="text/css" />
  <link href="../../css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css" rel="stylesheet" type="text/css" />
  <link href="../../css/autoinvest.css" tppabs="https://xin/2.0/css/autoinvest.css" rel="stylesheet" type="text/css" />
  <link href="../../css/left.css" tppabs="https://xin/2.0/css/left.css" rel="stylesheet" type="text/css" />
  <link href="../../css/esw_account.css" tppabs="https://xin/2.0/css/esw_account.css" rel="stylesheet" type="text/css" />
  <link href="../../css/basic.css" tppabs="https://xin/2.0/css/basic.css" rel="stylesheet" type="text/css" />
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
  <script type="text/javascript" src="../../js/www/bank_cards.js" tppabs="https://xin/2.0/js/www/bank_cards.js"></script>
  <script type="text/javascript" src="../../js/selectivizr.js" tppabs="https://xin/2.0/js/selectivizr.js"></script>
  <script type="text/javascript" src="../../../webapp2.0/js/api/user.js" tppabs="https://xin/webapp2.0/js/api/user.js"></script>
  <script type="text/javascript" src="../../../webapp2.0/js/api/escrow.jx.js" tppabs="https://xin/webapp2.0/js/api/escrow.jx.js"></script>
  <script type="text/javascript" src="../../js/www/account/bank_account.js" tppabs="https://xin/2.0/js/www/account/bank_account.js"></script>
  <script type="text/javascript" src="../../../webapp2.0/js/api/id.js" tppabs="https://xin/webapp2.0/js/api/id.js"></script>
  <script type="text/javascript" src="../../js/esw_account_jx.js" tppabs="https://xin/2.0/js/esw_account_jx.js"></script>
  <script type="text/javascript" src="../../../store/js/jquery.cookie.js" tppabs="https://xin/store/js/jquery.cookie.js"></script>
  <!--<script type="text/javascript" src="/webapp2.0/js/www/history_adviser.js"></script>-->

</head>


<body>
<!--header-->
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
    <div class="logo left PositionR"><a href="../../../index.shtml.htm" tppabs="https://xin/index.shtml"><img src="../../images/logo.gif" tppabs="https://xin/2.0/images/logo.gif" /></a><a href="../about/shareholder.shtml.htm" tppabs="https://xin/2.0/views/about/shareholder.shtml" class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="account_index.shtml.htm" tppabs="https://xin/2.0/views/account/account_index.shtml" class="f-my" id="nav_my">我的账户</a> <a id="top_exit" href="javascript:AA.RapidLogin.loginout();" class="f_exit" style="display:none;">退出</a> <span class="h-login-reg h-login" style="display: none;"><i></i><a href="../../login2.0.html" tppabs="https://xin/2.0/login2.0.html" class="flogin">登录</a><a href="register4.0.shtml.htm" tppabs="https://xin/2.0/views/account/register4.0.shtml" class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="../../../index.shtml.htm" tppabs="https://xin/index.shtml" id="nav_index">首页</a></li>
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
        <li><a href="../../action/zt_call/xr_call.shtml.htm" tppabs="https://xin/2.0/action/zt_call/xr_call.shtml" id="nav_duoduo">朵朵来电</a></li>
        <li><a href="../about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="../about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" target="_blank">投资帮助</a></li>
          	<li><a href="../about/risk.shtml.htm" tppabs="https://xin/2.0/views/about/risk.shtml" target="_blank">风险控制</a></li>
            <li><a href="../about/laws_regulations.shtml.htm#navLaws" tppabs="https://xin/2.0/views/about/laws_regulations.shtml#navLaws" target="_blank">法律法规</a></li>
            <li><a href="../about/help.shtml.htm" tppabs="https://xin/2.0/views/about/help.shtml" id="nav_help" target="_blank">问题答疑</a></li>
          </ul>
        </li>
        <li><a href="../about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="../about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" id="nav_about_index">公司简介</a></li>
            <li><a href="../about/team.shtml.htm" tppabs="https://xin/2.0/views/about/team.shtml">团队介绍</a></li>
            <li><a href="../about/service_data.shtml.htm" tppabs="https://xin/2.0/views/about/service_data.shtml">运营数据</a></li>
            <li><a href="../about/xr_announcement.shtml.htm" tppabs="https://xin/2.0/views/about/xr_announcement.shtml">平台公告</a></li>
            <li><a href="../about/partner.shtml.htm" tppabs="https://xin/2.0/views/about/partner.shtml">合作机构</a></li>
            <li><a href="../about/contact.shtml.htm" tppabs="https://xin/2.0/views/about/contact.shtml">联系我们</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="../../vip.html" tppabs="https://xin/2.0/vip.html" id="nav_vip">VIP特权</a> | <a href="../../../gift.htm" tppabs="https://xin/gift" id="nav_gift">积品汇</a></div>
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

<!--header end-->
<!--center-->
<div class="bank_warp">
  <div class="main">
    <div class="bank_pic"><img src="../../images/account/images/esw13.jpg" tppabs="https://xin/2.0/images/account/images/esw13.jpg" /></div>
    <dl>
      <dt>姓名：</dt>
      <dd>
        <input name="" id="real_name" type="text" class="t-input" placeholder="请输入您的真实姓名，需与开户姓名一致" />
      </dd>
      <div class="clear"></div>
    </dl>
    <dl>
      <dt>身份证号：</dt>
      <dd>
        <input name="" id="identify_no" type="text" class="t-input" placeholder="请输入您的身份证号" />

      </dd>
      <div class="clear"></div>
    </dl>
    <dl>
      <dt>银行卡号：</dt>
      <dd>
        <input name="" id="bank_no" type="text" class="t-input" placeholder="请输入您的银行卡号" />
        <!--<p class="red"><i class="iconx"></i>请输入正确格式的银行卡号</p>-->
        <!--<span class="t-font"><a href="javascript:void(0)" class="orange" id="do_support_bank">查看支持银行>></a></span>--></dd>
      <div class="clear"></div>
    </dl>
    <dl>
      <dt>开户银行：</dt>
      <dd>
        <select name="" id="bank" class="t-select">
          <option value="中国银行">中国银行</option>
          <option value="中国工商银行">中国工商银行</option>
          <option value="中国农业银行">中国农业银行</option>
          <option value="中国建设银行">中国建设银行</option>
          <option value="中信银行">中信银行</option>
          <option value="中国光大银行">中国光大银行</option>
          <option value="中国民生银行">中国民生银行</option>
          <option value="中国邮政储蓄银行">中国邮政储蓄银行</option>
          <option value="上海浦东发展银行">上海浦东发展银行</option>
          <option value="上海银行">上海银行</option>
          <option value="上海农商银行">上海农商银行</option>
          <option value="广发银行">广发银行</option>
          <option value="兴业银行">兴业银行</option>
          <option value="平安银行">平安银行</option>
          <option value="交通银行">交通银行</option>
          <option value="招商银行">招商银行</option>
          <option value="华夏银行">华夏银行</option>
          <option value="北京农商银行">北京农商银行</option>
          <option value="浙商银行">浙商银行</option>
        </select>
      </dd>
      <div class="clear"></div>
    </dl>
    <dl>
      <dt>开户行所在地：</dt>
      <dd>
        <select name="" id="loc_province" class="t-select text01">

        </select>
        <select name="" id="loc_city" class="t-select text01">

        </select>
        <select name="" id="loc_town" class="t-select text01">

        </select>
      </dd>
      <div class="clear"></div>
    </dl>
    <dl>
      <dt>支行名称：</dt>
      <dd>
        <input name="" id="batch_name" type="text" class="t-input" placeholder="请以“支行”结尾，如科技园支行" />
      </dd>
      <div class="clear"></div>
    </dl>
    <dl>
      <dt>手机号：</dt>
      <dd>
        <input name="" id="mobile_no" type="text" class="t-input" placeholder="152***5256  需与银行卡预留手机号一致" />
        <span class="t-font"><a href="account_settings.shtml.htm" tppabs="https://xin/2.0/views/account/account_settings.shtml"  class="orange">去修改>></a></span> </dd>
      <div class="clear"></div>
    </dl>
    <dl>
      <dt>图形验证码：</dt>
      <dd>
        <input name="" id="captcha" type="text" class="t-input text02" placeholder="请输入图形验证码" />
        <input type="hidden" id="seed" value="hidden"/>
        <input type="hidden" id="sms_seed" value="hidden"/>
        <span class="t-pic"><img id="captcha_pic" src="../../images/account/images/12.jpg" tppabs="https://xin/2.0/images/account/images/12.jpg" width="101" height="31" /></span><a href="javascript:IdBankModify.getCaptche();" class="blue f-in">看不清楚？<br />
        换一张</a> </dd>
      <div class="clear"></div>
    </dl>
    <dl>
      <dt>手机验证码：</dt>
      <dd>
        <input name="" id="mobile_captcha" type="text" class="t-input text02" placeholder="请输入手机验证码" />
        <a href="javascript:void(0)" id="send_voice" class="sub03">短信验证码</a>
        <p class="red" id="error_info" hidden="hidden"><i class="AllIcon iconx"></i>请输入正确格式的身份证号码</p>
      </dd>

      <div class="clear"></div>
    </dl>
    <dl>
      <dt>&nbsp;</dt>
      <dd>
        <input name="" id="agreement" type="checkbox" value="" />
        <span class="f-xy">我已阅读并同意<a href="licensing_agreement.html" tppabs="https://xin/2.0/views/account/licensing_agreement.html" class="orange">《平台用户授权协议》</a>和<a href="service_agreement.html" tppabs="https://xin/2.0/views/account/service_agreement.html" class="orange">《江西银行网络交易<br />
        资金账户服务第三方协议》</a></span></dd>
      <div class="clear"></div>
    </dl>
    <dl>
      <dt>&nbsp;</dt>
      <dd><a href="javascript:void(0)" id="next_but" class="sub02">立即开通</a></dd>
      <div class="clear"></div>
    </dl>
    <div class="bank_tips">如有疑问，请拨打信融客服热线 : 400-777-9888 或江西银行<br />
      客服热线：400-789-6266</div>
  </div>
</div>

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

<!--弹层-->
<div id="support_bank" style="display:none;">
  <div class="esw_dialog" style="width:600px;">
    <div class="bank_table">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <thead>
        <tr>
          <th width="130" align="left">银行渠道</th>
          <th width="140" align="left">充值限额</th>
          <th align="left">备注</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td align="left">中国银行</td>
          <td align="left">单笔5万，单日5万</td>
          <td align="left">暂不支持快捷充值</td>
        </tr>
        <tr>
          <td align="left">中国工商银行</td>
          <td align="left">单笔5万，单日5万</td>
          <td align="left">&nbsp;</td>
        </tr>
        <tr>
          <td align="left">中国农业银行</td>
          <td align="left">单笔10万，单日10万</td>
          <td align="left">&nbsp;</td>
        </tr>
        <tr>
          <td align="left">中国建设银行</td>
          <td align="left">单笔5万，单日5万</td>
          <td align="left">部分需开通银联无卡支付业务才能提现</td>
        </tr>
        <tr>
          <td align="left">中信银行</td>
          <td align="left">单笔5000，单日1万</td>
          <td align="left">单月累计20000</td>
        </tr>
        <tr>
          <td align="left">中国光大银行</td>
          <td align="left">单笔10万，单日10万</td>
          <td align="left">在光大银行柜面或个人网银开通电子支付功能</td>
        </tr>
        <tr>
          <td align="left">中国民生银行</td>
          <td align="left">单笔10万，单日10万</td>
          <td align="left">&nbsp;</td>
        </tr>
        <tr>
          <td align="left">广发银行</td>
          <td align="left">单笔10万，单日10万</td>
          <td align="left">&nbsp;</td>
        </tr>
        <tr>
          <td align="left">兴业银行</td>
          <td align="left">单笔5万，单日5万</td>
          <td align="left">&nbsp;</td>
        </tr>
        <tr>
          <td align="left">平安银行</td>
          <td align="left">单笔10万，单日10万</td>
          <td align="left">需开通银联无卡支付业务</td>
        </tr>
        <tr>
          <td align="left">交通银行</td>
          <td align="left">单笔10万，单日10万</td>
          <td align="left">&nbsp;</td>
        </tr>
        <tr>
          <td align="left">上海浦东发展银行</td>
          <td align="left">单笔5万，单日5万</td>
          <td align="left">&nbsp;</td>
        </tr>
        <tr>
          <td align="left">招商银行</td>
          <td align="left">&nbsp;</td>
          <td align="left">暂不支持快捷充值</td>
        </tr>
        <!--<tr>
          <td align="left">华夏银行</td>
          <td align="left">&nbsp;</td>
          <td align="left">暂不支持快捷充值</td>
        </tr>-->
        <tr>
          <td align="left">中国邮政储蓄银行</td>
          <td align="left">&nbsp;</td>
          <td align="left">暂不支持快捷充值</td>
        </tr>
        <tr>
          <td align="left">上海农商银行</td>
          <td align="left">&nbsp;</td>
          <td align="left">暂不支持快捷充值</td>
        </tr>
        <tr>
          <td align="left">北京农商银行</td>
          <td align="left">&nbsp;</td>
          <td align="left">暂不支持快捷充值</td>
        </tr>
        <tr>
          <td align="left">浙商银行</td>
          <td align="left">&nbsp;</td>
          <td align="left">暂不支持快捷充值</td>
        </tr>
        <tr>
          <td align="left">上海银行</td>
          <td align="left">&nbsp;</td>
          <td align="left">暂不支持快捷充值</td>
        </tr>
        </tbody>
      </table>
    </div>
    <div class="bank_tips">
      <p>注：1、支持充值银行如上表，其他银行暂不支持；具体的额度以发卡银行为准。如果您在发卡银行设置的支付额度低于此表限额，以您的设置为准。</p>
      <p>2、您可使用其他银行卡进行跨行转账、快捷充值或支付宝转账方式充值。</p>
      <p>3、企业账户不支持快捷充值，提现需走人行通道。</p>
    </div>
  </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){

        $('#do_support_bank').click(function(){
            var wBox=$("#support_bank").wBox({
                title: "查看支持银行",
                html: $('#support_bank').html()

            });

            wBox.showBox();
        });

//        showLocation();
    });
</script>
<!--加载弹层-->
<div id="bounce" style="display: none">
<div class="dialog_mask"></div>
<div class="dialog_load"><img src="../../images/loadingmaomao.gif" tppabs="https://xin/2.0/images/loadingmaomao.gif"><h2>正在加载中...</h2></div>
</div>
</body>
</html>