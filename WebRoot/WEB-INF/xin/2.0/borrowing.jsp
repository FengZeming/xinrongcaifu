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

<link href="css/Account.css" tppabs="https://xin/2.0/css/Account.css" rel="stylesheet" type="text/css" />
<link href="css/basic.css" tppabs="https://xin/2.0/css/basic.css" rel="stylesheet" type="text/css" />

<link href="css/dialog.css" tppabs="https://xin/2.0/css/dialog.css" rel="stylesheet" type="text/css" />
<link href="css/global.css" tppabs="https://xin/2.0/css/global.css" rel="stylesheet" type="text/css" />
<link href="css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css" rel="stylesheet" type="text/css" />
<link href="../s/vendor/datepicker/skin/WdatePicker.css" tppabs="https://xin/s/vendor/datepicker/skin/WdatePicker.css" rel="stylesheet" type="text/css" />
<!--<script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->
<!-- <script type="text/javascript" src="/2.0/js/jquery-1.10.2.min.js"></script> -->
<!-- <script type="text/javascript" src="js/jquery-1.4.2.js" tppabs="https://xin/2.0/js/jquery-1.4.2.js"></script> -->
<script type="text/javascript" src="js/jquery-1.10.2.js" tppabs="https://xin/2.0/js/jquery-1.10.2.js"></script>
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

<script type="text/javascript" src="js/jquery-1.10.2.min.js" tppabs="https://xin/2.0/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../s/js/AA.base-min.js" tppabs="https://xin/s/js/AA.base-min.js"></script>
<script type="text/javascript" src="../s/vendor/artDialog/jquery.artDialog.js" tppabs="https://xin/s/vendor/artDialog/jquery.artDialog.js"></script>
<script type="text/javascript" src="js/mod/login.js" tppabs="https://xin/2.0/js/mod/login.js"></script>
<script type="text/javascript" src="js/tytabs.jquery.new.js" tppabs="https://xin/2.0/js/tytabs.jquery.new.js"></script>
<script type="text/javascript" src="js/XR.base.js" tppabs="https://xin/2.0/js/XR.base.js"></script>
<script src="js/jquery-webox.js" tppabs="https://xin/2.0/js/jquery-webox.js" type="text/jscript"></script>
<script type="text/javascript" src="../s/vendor/datepicker/WdatePicker.js" tppabs="https://xin/s/vendor/datepicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/www/square.jpg" tppabs="https://xin/2.0/js/www/query-refund.js"></script>
<script type="text/javascript" src="js/jquery.imgscroll.min.js" tppabs="https://xin/2.0/js/jquery.imgscroll.min.js"></script>
<script type="text/javascript" src="js/address/area.js" tppabs="https://xin/2.0/js/address/area.js"></script>
<script type="text/javascript" src="js/api/user_api.js" tppabs="https://xin/2.0/js/api/user_api.js"></script>
<script type="text/javascript" src="js/address/location.js" tppabs="https://xin/2.0/js/address/location.js"></script>
<script type="text/javascript" src="../s/vendor/artDialog/jquery.artDialog.js" tppabs="https://xin/s/vendor/artDialog/jquery.artDialog.js"></script>
<script type="text/javascript" src="../s/vendor/artDialog/dialog_ex.js" tppabs="https://xin/s/vendor/artDialog/dialog_ex.js"></script>
<script type="text/javascript">
$(function(){
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

});
</script>
</head>
<style>

.borrowingbox .infobox1{ }
.borrowingbox .infobox1{ display:inline-block; width:142px; background:#f6f9fd; border:1px solid #999999; border-radius:3px; position:absolute; left:-20px; top:30px; padding:8px; line-height:18px; font-style:normal; z-index:9991;}
.borrowingbox .infobox1 b{ display:inline-block; position:absolute; left:50%; top:-7px; margin-left:-6px;}
</style>

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
    <div class="logo left PositionR"><a href="../index.shtml.htm" tppabs="https://xin/index.shtml"><img src="images/logo.gif" tppabs="https://xin/2.0/images/logo.gif" /></a><a href="views/about/shareholder.shtml.htm" tppabs="https://xin/2.0/views/about/shareholder.shtml" class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="views/account/account_index.shtml.htm" tppabs="https://xin/2.0/views/account/account_index.shtml" class="f-my" id="nav_my">我的账户</a> <a id="top_exit" href="javascript:AA.RapidLogin.loginout();" class="f_exit" style="display:none;">退出</a> <span class="h-login-reg h-login" style="display: none;"><i></i><a href="login2.0.html" tppabs="https://xin/2.0/login2.0.html" class="flogin">登录</a><a href="views/account/register4.0.shtml.htm" tppabs="https://xin/2.0/views/account/register4.0.shtml" class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="../index.shtml.htm" tppabs="https://xin/index.shtml" id="nav_index">首页</a></li>
        <li><a href="../invest.shtml.htm" tppabs="https://xin/invest.shtml" id="nav_invest">投资<i class="arrow"></i></a>
        <ul>
        <li><a href="calculator.html#finvest" tppabs="https://xin/2.0/calculator.html#finvest" target="_blank">投资计算器</a></li>
        </ul>
        </li>
        <li><a href="action/xr_huahua/huahua.shtml.htm" tppabs="https://xin/2.0/action/xr_huahua/huahua.shtml" id="nav_huahua">信融花花<i class="arrow"></i><b class="hh_icon"><img src="images/hh_icon.png" tppabs="https://xin/2.0/images/hh_icon.png" /></b></a>
          <ul>
          	<li><a href="action/xr_huahua/huahua.shtml.htm" tppabs="https://xin/2.0/action/xr_huahua/huahua.shtml" target="_blank">我要借款</a></li>
            <li><a href="calculator.html" tppabs="https://xin/2.0/calculator.html" target="_blank">借款计算器</a></li>
          </ul>
        </li>
        <li><a href="action/zt_call/xr_call.shtml.htm" tppabs="https://xin/2.0/action/zt_call/xr_call.shtml" id="nav_duoduo">朵朵来电</a></li>
        <li><a href="views/about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="views/about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" target="_blank">投资帮助</a></li>
          	<li><a href="views/about/risk.shtml.htm" tppabs="https://xin/2.0/views/about/risk.shtml" target="_blank">风险控制</a></li>
            <li><a href="views/about/laws_regulations.shtml.htm#navLaws" tppabs="https://xin/2.0/views/about/laws_regulations.shtml#navLaws" target="_blank">法律法规</a></li>
            <li><a href="views/about/help.shtml.htm" tppabs="https://xin/2.0/views/about/help.shtml" id="nav_help" target="_blank">问题答疑</a></li>
          </ul>
        </li>
        <li><a href="views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" id="nav_about_index">公司简介</a></li>
            <li><a href="views/about/team.shtml.htm" tppabs="https://xin/2.0/views/about/team.shtml">团队介绍</a></li>
            <li><a href="views/about/service_data.shtml.htm" tppabs="https://xin/2.0/views/about/service_data.shtml">运营数据</a></li>
            <li><a href="views/about/xr_announcement.shtml.htm" tppabs="https://xin/2.0/views/about/xr_announcement.shtml">平台公告</a></li>
            <li><a href="views/about/partner.shtml.htm" tppabs="https://xin/2.0/views/about/partner.shtml">合作机构</a></li>
            <li><a href="views/about/contact.shtml.htm" tppabs="https://xin/2.0/views/about/contact.shtml">联系我们</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="vip.html" tppabs="https://xin/2.0/vip.html" id="nav_vip">VIP特权</a> | <a href="../gift.htm" tppabs="https://xin/gift" id="nav_gift">积品汇</a></div>
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
<script type="text/javascript" src="js/wbox.js" tppabs="https://xin/2.0/js/wbox.js"></script>
<link rel="stylesheet" href="css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css">
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
				url:'../v2/login/in_session_data.jso'/*tpa=https://xin/v2/login/in_session_data.jso*/,
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
        	location.href="views/account/account_settings.shtml-goAnswer=true.htm"/*tpa=https://xin/2.0/views/account/account_settings.shtml?goAnswer=true*/;
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
  <div class="AccountLeft left">
  <ul class="AccountNav">
  <li><a href="views/account/account_index.shtml.htm" tppabs="https://xin/2.0/views/account/account_index.shtml">账户首页</a></li>
  <li class="PositionR"><a href="views/account/esw_account.html" tppabs="https://xin/2.0/views/account/esw_account.html">存管账户</a><span class="esw_new"><img src="images/esw_new.png" tppabs="https://xin/2.0/images/esw_new.png" width="44" height="45" /></span></li>
  <li><a href="xincunbao.shtml.htm" tppabs="https://xin/2.0/xincunbao.shtml">信 存 宝<i class="fontr">R</i></a></li>
  <li><a href="../my/invest.htm" tppabs="https://xin/my/invest">投资管理</a></li>
  <li><a href="views/huahua/huahua.html" tppabs="https://xin/2.0/views/huahua/huahua.html">信融花花</a></li>
  <li style="display:none;"><a href="../my/recharge.htm" tppabs="https://xin/my/recharge"><i class="AllIcon Icon03"></i>充值提现</a></li>
  <li><a href="../my/consume.htm" tppabs="https://xin/my/consume">收支查询</a></li>
  <li><a href="recommend.html" tppabs="https://xin/2.0/recommend.html">推荐有奖</a></li>
  <li><a href="my_service.html" tppabs="https://xin/2.0/my_service.html">增值服务<!--<i class="AllIcon iconReward"></i>--></a></li>
  <li><a href="views/call/call.shtml.htm" tppabs="https://xin/2.0/views/call/call.shtml">朵朵来电<!--<b class="AllIcon iconnew"></b>--></a></li>
  <li class="liFoot"><a href="views/account/account_settings.shtml.htm" tppabs="https://xin/2.0/views/account/account_settings.shtml">账户设置</a></li>
  <li><a href="../my/msg.htm" tppabs="https://xin/my/msg">我的消息</a></li>
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
  <!--left end-->
  <div class="AccountRight right">
  <div class="blacklist">
	<h1><img src="images/audio.gif" tppabs="https://xin/2.0/images/audio.gif" />逾期黑名单</h1><span class="cut">|</span>
	<div class="namelist">
		<ul id="result_view">
	    </ul>
	</div>
	<span class="cut">|</span><a href="blacklist.html" tppabs="https://xin/2.0/blacklist.html" target="_blank" class="blue">查看更多 ></a>
	<div class="clear"></div>
  </div>
  <div class="borrowingbox PositionR">
  <h1><span class="left">借款管理</span><span class="right red"><i class="AllIcon iconI"></i>借款逾期将会影响您的芝麻信用、人民银行个人信用记录、银行贷款申请等。</span></h1>
  <div class="boxleft left">
	<dl>
		<dt><img src="images/b02.jpg" tppabs="https://xin/2.0/images/b02.jpg" width="80" height="80" /></dt>
		<dd>
			<h2>芝麻信用分：<span id="score"></span><div id="uShield_show" class="right" style="display:none;">银行U盾认证：<span id="uShield_view"><a class="blue" href="javascript:void(0);">立即认证</a></span> <i class="AllIcon icon01"><span class="infobox"><b><img src="images/bicon.png" tppabs="https://xin/2.0/images/bicon.png" width="6" height="13" /></b>通过认证有可能提高信用额度</span></i></div></h2>
			<p>信用额度：<span id="totalCreditLimit"> </span> <i class="AllIcon icon01"><span class="infobox">额度由芝麻信用分、VIP、用户网络行为大数据等维度综合得出
				<b><img src="images/bicon.png" tppabs="https://xin/2.0/images/bicon.png" width="6" height="13" /></b></span></i>
			</p>
			<p><span class="left">剩余额度：<b id="leftCreditLimit" class="red"></b></span>  <span id="daishenhe_choukuanzhong" class="left" style="padding-left:10px;"><b class="red"></b>元借款待审核/筹款中</span></p>
            <p class="clear"></p>
			<p>
				<span class="PositionR"><a href="javascript:loan_apply(1);" class="accsub01" id="inside01">申请借款</a><span class="infobox1" id="load_tip" style="display:none">正在为您加载数据，请稍后...<b><img src="images/bicon08.png" tppabs="https://xin/2.0/images/bicon08.png" /></b></span></span>
				<a href="javascript:void(0);" class="accsub02" style="margin-left: 5px;" id="refund_btn">我要还款</a>
				<a href="javascript:void(0);" id="fillInfomation" style="margin-left: 5px;"  onclick="guidUserFillInfomationAgain()" class="blue"  style="display:none"></a>
				
			</p>
		</dd>
	</dl>
  </div>
  <div class="boxright right">
  <p><b id="vip_l" style="display:none">会员等级：</b><span id="vip"></span><i class="AllIcon icon01"><span class="infobox">风险准备金与VIP等级相关，按借款本金计提，普通用户5%，VIP1为2%，VIP2为1%，VIP3-9免准备金<b><img src="images/bicon08.png" tppabs="https://xin/2.0/images/bicon08.png" /></b></span></i></p>
  <p class="font01"><!-- <span class="red" style="font-size:12px;"><i class="AllIcon icon01"></i> 风险准备金与VIP等级相关，为借款金额的0-3%</span> --> <a href="calculator.html" tppabs="https://xin/2.0/calculator.html" target="_blank" class="blue">计算器 ></a></p>

  </div>
  <div class="black25"></div>
    <!-- 
  <div class="boxfont">
 
  <span class="left">未还金额：<b id="unrefundCount" class="red">-</b> 期，<b id="unrefundMoney" class="red">-</b> 元<i class="AllIcon icon01"><span class="infobox">请确保在还款日中午14:00时账户余额不小于当日应还金额，系统将在账户中自动扣除以完成还款<b><img src="images/bicon.png" width="6" height="13" /></b></span></i></span>
  <span class="right">累计借款：<b id="accLoanNum" class="red">-</b> 笔，<b id="accLoanMoney" class="red">-</b> 元  <a href="javascript:clickBorrowTab()" class="blue">查看详情</a></span>
 
  </div>
   -->
  </div><!--end-->
  <div class="black20"></div>
  <div id="tabsholder" class="borrowingtab PositionR">
   
  <span  class="borrowingfont">
  
  <span id="unsuccess_loan_outside" style="display:none">
  <a style="display:none" href="javascript:showUnsuccessLoan()" class="blue" id="inside03">未成功的借款 ></a>
  </span> 
  <span style="display:none" id="nextReturnField" >下次还款日:<span id="nextReturnDay">-</span> 　 应还金额:<span id="nextReturnMoney" class="red">-</span>元</span></span> 
        <ul class="tabs">
            <li id="tab1" onclick="changeView(1)">逾期中</li>
            <li onclick="changeView(2)" id="tab2">未还款查询</li>
            <li onclick="changeView(3)" id="tab3">借款记录</li>
            <li id="tab4" onclick="changeView(4)">还款记录</li>
        </ul>
        <div class="contents">
        <div style="dispay:block" id="content1" class="tabscontent">
             <div class="IntegralBox">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <thead>
  	<tr>
    <th align="center">应还日期</th>
    <th align="center">未还金额</th>
    <th align="center">应还金额</th>
    <th align="center">逾期天数</th>
    <th align="center">罚息金额</th>
    <th align="center">已还金额</th>
    <th align="center">借款日期</th>
    <th align="center">借款金额</th>
    <th align="center">详情</th>
    </tr>
   </thead>
   <tbody id="overdueList">
   </tbody>
</table>
<div id="overdueBtn" class="AccFontPage right"></div>
<p class="clear"></p>
<p>共 <b class="red" id="overdueCount">-</b> 期还款逾期中，未还金额合计<b class="red" id="overdueSum">-</b> 元。
<!-- （应还金额<span id="overdueMoney">-</span> 元，已还金额合计<span id="overdueInterest">-</span> 元，罚息合计<span id="penaltyInterest">-</span>元）</p> -->
<p><i class="AllIcon iconinfo"></i>还款提示：<span class="red">逾期中的未还金额按日计算罚息，为避免产生更多罚息，请尽快充值以完成还款</span></p>
<div class="black25"></div>
  </div>
            </div>
            <div id="content2" class="tabscontent">
           <div class="IntegralBox">
  <div class="Boxsearch"><span class="searchfont01 left">开始日期：<input type="text" id="toReturnBeginTime" class="Wdate" onfocus="WdatePicker()" />结束日期：<input type="text" id="toReturnEndTime" class="Wdate" onfocus="WdatePicker()" /> <input onclick="toReturnDoSearch(5)" type="button" value="查询" class="searchsub"></span><span class="searchnav right"><a href="javascript:toReturnDoSearch(1)" onclick="selectCur(this)" class="cur">下次还款日</a> <a href="javascript:toReturnDoSearch(2)" onclick="selectCur(this)">最近一周</a> <a href="javascript:toReturnDoSearch(3)" onclick="selectCur(this)">1个月</a> <a href="javascript:toReturnDoSearch(4)" onclick="selectCur(this)">3个月</a> <a href="javascript:toReturnDoSearch(6)" onclick="selectCur(this)">全部</a></span></div>
  <div class="clear"></div>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <thead>
  <tr>
    <th align="center">还款日期</th>
    <th align="center">未还金额</th>
    <th align="center">应还金额</th>
    <th align="center">借款项目</th>
    <th align="center">借款日期</th>
    <th align="center">借款金额</th>
    <th align="center">借款期限</th>
    <th align="center">详情</th>
    </tr>
    </thead>
    <tbody id="toReturnList">

    </tbody>
</table>
<div class="AccFontPage right" id="toReturnBtn">

</div>
<p class="clear"></p>
<p>共 <b id="toReturnCount" class="red">-</b> 期未还，合计未还金额<b id="toReturnSum" class="red">-</b> 元。<!-- （未还本金合计 <span id="toReturnMoney">-</span>元，利息合计 <span id="toReturnInterest">-</span>元 --></p>
<p><i class="AllIcon iconinfo"></i>还款提示：请确保在还款日前一天账户余额不小于当日应还金额，系统将在账户中自动扣除以完成还款</p>
<div class="black25"></div>
  </div>
            </div>
            <div id="content3" class="tabscontent">
             <div class="IntegralBox">
  <div class="Boxsearch searchpo"><span class="searchfont02">借款时间：<select id="borrowRecordType" onchange="borrowTimeChange()"><option value="-1">不限</option><option value="1">最近一周</option><option value="2">最近一个月</option><option value="3">最近三个月</option><option value="4">指定时间</option></select> 状态：<select id="borrowRecordStatus" onchange="borrowRecordDoSearch()"><option value="-1">不限</option><option value="7">还款中</option><option value="9">正常还款结束</option><option value="11">逾期还款结束</option></select></span><span id="borrowRecordTime" style="display:none" class="searchfont01">开始日期：<input type="text" id="borrowRecordBeginTime" class="Wdate" onfocus="WdatePicker()" /> 结束日期：<input type="text" id="borrowRecordEndTime" class="Wdate" onfocus="WdatePicker()" /> <input type="button" onclick="borrowRecordDoSearch()" value="查询" class="searchsub"></span></div>
  <div class="clear"></div>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <thead>
  <tr>
    <th align="center">借款日期</th>
    <th align="center">借款金额</th>
    <th align="center">借款项目</th>
    <th align="center">期限</th>
    <th align="center">还款方式</th>
    <th align="center">利率</th>
    <th align="center">借款成本</th>
    <th align="center">状态</th>
    <th align="center">操作</th>
    </tr>
    </thead>
    <tbody id="borrowRecordList">

    </tbody>
</table>
<div id="borrowRecordBtn" class="AccFontPage right"></div>
<p class="clear"></p>
<p>共 <b id="borrowRecordCount" class="red">-</b> 笔借款，金额合计 <b id="borrowRecordSum" class="red">-</b> 元，总成本合计 <b id="borrowRecordCost" class="red">-</b> 元</p>
<div class="black25"></div>
  </div>
            </div>
            <div id="content4" class="tabscontent">
            <div class="IntegralBox">
  <div class="Boxsearch"><span class="searchfont01 left">开始日期：<input type="text" id="returnRecordBeginTime" class="Wdate" onfocus="WdatePicker()" /> 结束日期：<input id="returnRecordEndTime" type="text" class="Wdate" onfocus="WdatePicker()"/> <input onclick="returnRecordDoSearch(5)" type="button" value="查询" class="searchsub"></span><span class="searchnav right"><a href="javascript:returnRecordDoSearch(1)" onclick="selectCur(this)" class="cur">上次还款日</a> <a href="javascript:returnRecordDoSearch(2)" onclick="selectCur(this)">最近一周</a> <a href="javascript:returnRecordDoSearch(3)" onclick="selectCur(this)">1个月</a> <a href="javascript:returnRecordDoSearch(4)" onclick="selectCur(this)">3个月</a> <a href="javascript:returnRecordDoSearch(6)" onclick="selectCur(this)">全部</a></span></div>
  <div class="clear"></div>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <thead>
  <tr>
    <th align="center">还款日期</th>
    <th align="center">未还金额</th>
    <th align="center">已还金额</th>
    <th align="center">借款项目</th>
    <th align="center">期限</th>
    <th align="center">还款方式</th>
    <th align="center">利率</th>
    <th align="center">状态</th>
    <th align="center">操作</th>
    </tr>
    </thead>
    <tbody id="returnRecordList">

    </tbody>
</table>
<div id="returnRecordBtn" class="AccFontPage right"><a href="#">上一页</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><span>4</span><a href="#">5</a><a href="#">6</a><a href="#">下一页</a></div>
<p class="clear"></p>
<p>共 <b id="returnRecordCount" class="red">-</b> 笔还款记录，合计金额<b id="returnRecordSum" class="red">-</b> 元（本金 <span id="returnRecordMoney">-</span> 元，利息<span id="returnRecordInterest">-</span> 元）</p>
<div class="black25"></div>
  </div>
			</div>
        </div>
    </div><!--end-->
  	<a id="ad" style="display:none;" href="javascript:if(confirm('https://xin/2.0/action/credit_cards/moutain1.jpg  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ������, �����������, ����Ŀ����ֹͣ��  \n\n�����ڷ������ϴ���?'))window.location='https://xin/2.0/action/credit_cards/moutain1.jpg'" tppabs="https://xin/2.0/action/credit_cards/credit_cards.html" target="_blank"><img src="images/moutain2.jpg" tppabs="https://xin/2.0/images/credit_ad.jpg" /></a>
  </div>
  <!--right end-->
  <div class="clear"></div>
  <div class="black25"></div>
</div>
<!--center end-->


<div id="box" style="display:none;">
	<div class="borrowingdialog">
		<dl>
        <dt>账户名：</dt>
        <dd class="blue" id="name">-</dd>
        <div class="clear"></div>
        </dl>
        <dl>
        <dt>可用额度：</dt>
        <dd id="leftLimit">-</dd>
        <div class="clear"></div>
        </dl>
        <dl>
        <dt>借款金额：</dt>
        <dd><input id="money" type="text" class="text01" placeholder="请输入100的整数倍 " /> 元</dd>
        <div class="clear"></div>
        </dl>
        <dl style="display:none">
        <dt>年化利率：</dt>
        <dd><input type="text" class="text01" placeholder="9~13.8" /> % <i class="AllIcon icon01"><span class="infobox">利率由借款期限决定<b><img src="images/bicon.png" tppabs="https://xin/2.0/images/bicon.png" width="6" height="13" /></b></span></i></dd>
        <div class="clear"></div>
        </dl>
        <dl>
        <dt>年化利率：</dt>
        <dd><span id="rate" class="red">9 % ~ 13.8 %</span></dd>
        <div class="clear"></div>
        </dl>
        <dl>
        <dt>借款期限：</dt>
        <dd>
		<select id="deadline" class="selectw01">
        	<option value='-1'>请选择</option><option value='1'>1个月</option><option value='2'>2个月</option>
        	<option value='3'>3个月</option><option value='4'>4个月</option>
        	<option value='5'>5个月</option><option value='6'>6个月</option>
        	<option value='7'>7个月</option><option value='8'>8个月</option>
        	<option value='9'>9个月</option><option value='10'>10个月</option>
        	<option value='11'>11个月</option><option value='12'>12个月</option>
        </select>
        </dd>
        <div class="clear"></div>
        </dl>
        <dl>
        <dt>还款方式：</dt>
        <dd>
        <!--  
        <select id="returnType" class="selectw01"><option value='-1'>请选择</option><option value='2'>等额本息</option></select>
        -->
      	  等额本息
      	  <input type="hidden" id="returnType" value="2"/>
        </dd>
        <div class="clear"></div>
        </dl>
        <dl>
        <dt>融资服务费：</dt>
        <dd><span id="rate" class="red">1 %</span> /月</dd>
        <div class="clear"></div>
        </dl>
        <dl>
        <dt>借款总成本：</dt>
        <dd><span id="loanCost" class="red">-</span> 元   <span id="vip_tip" style="display: none">(<a href="vip.html" tppabs="https://xin/2.0/vip.html" target="_blank" class="red">VIP会员每次借款收费少收借款金额的3%</a>)</span></dd>
        <div class="clear"></div>
        </dl>
        <dl style='display:block'>
        <dt>借款成功后到账金额：</dt>
        <dd><span id="payMoney" class="red">-</span> 元</dd>
        <div class="clear"></div>
        </dl>
        <dl>
        <dt>资金用途：</dt>
        <dd><select id="yongtu" class="selectw01"><option value='请选择'>请选择</option><option value='扩大经营'>扩大经营</option><option value='短期周转'>短期周转</option><option value='房屋装修'>房屋装修</option><option value='教育培训'>教育培训</option><option value='医疗支出'>医疗支出</option><option value='个人消费'>个人消费</option></select></dd>
        <div class="clear"></div>
        </dl>
        <dl>
        <dt>用途描述：</dt>
        <dd><textarea id="desc" cols="" rows="" class="textarea01" placeholder="请详细描述资金用途，以便风控人员审核（其他用户不可见）"></textarea></dd>
        <div class="clear"></div>
        </dl>
        <dl>
        <dt>&nbsp;</dt>
        <dd><p class="red" id="error"></p></dd>
        <div class="clear"></div>
        </dl>
        <dl>
        <dt>&nbsp;</dt>
        <dd><a id="nextStepBtn" class="accsub01">下一步</a></dd>
        <div class="clear"></div>
        </dl>
        <div class="infofont"><h2>温馨提示：</h2>1、借款总成本=利息+融资服务费+风险准备金；<br />
2、融资服务费率为1%/月，风险准备金为借款金额的0%-3%；<br />
3、融资服务费及风险准备金在借款成功时一次性扣除，利息按月支付；<br />
4、借款后请按时还款，否则会产生罚息费用并影响您的信用记录；<br />
5、借款成功后，不可提前还款；<br />
6、为防止借款到账后自动投资，系统将在您提交成功后关闭自动投资功能，如有需要请手动开启；<br />
<span class="red">7、借款逾期将会影响您的芝麻信用、人民银行个人信用记录、银行贷款申请等。</span></div>
<div class="black25"></div>
	</div><!--end-->
</div>

<div id="box01" style="display:none;">
    <div style="width:590px" class="borrowingdialog">
    <ul class="dialoglist">
    <li>请确认以下借款信息，并输入交易密码确认借款：</li>
    <li>借款金额：<span id="money_confirm" class="red"></span> 元</li>
    <li>借款期限：<span id="deadline_confirm" class="red"></span> 个月</li>
    <li>还款方式：<span id="return_type_confirm"></span></li>
    <li style="display:none">还款方式代号：<span id="return_type_code_confirm"></span></li>
    <li>借款总成本：<span id="loan_cost_confirm" class="red"></span> 元</li>
    <li>借款成功后到账金额：<span id="pay_money_confirm" class="red"></span> 元</li>
    <li style="display:none">借款用途：<span id="yongtu_confirm"></span></li>
    <li style="display:none">用途描述：<span id="desc_confirm"></span></li>
    <li><input id="close_auto_invest" type="checkbox" value="" checked="checked"  disabled="disabled" />关闭自动投资功能 <i class="AllIcon icon01"><span class="infobox">为防止借款到账后自动投资，系统将在您提交成功后关闭自动投资功能，如有需要请手动开启<b><img src="images/bicon.png" tppabs="https://xin/2.0/images/bicon.png" width="6" height="13" /></b></span></i></li>
    <li><input id="agreement_check" name=""  type="checkbox" value="0" />我已同意<a href="online_agreement.html" tppabs="https://xin/2.0/online_agreement.html"  target="_blank" class="blue">《信融财富个人贷款协议》</a></li>
    <li>交易密码：<input id="safe_pass" type="password" class="text02" /> <a href="views/account/back_password.shtml-tab=2.htm" tppabs="https://xin/2.0/views/account/back_password.shtml?tab=2" target="_blank" class="blue">忘记密码</a></li>
    <li>图形验证码：<input id="captcha" type="text" class="text02"/><span style="padding-left:5px;vertical-align: middle;display: inline-block;" id="captcha_img"></span></li>
    <li>手机验证码：<input id="mobile_captcha" type="text" class="text02"/><a style="margin:0 5px;background: #7dbfee;" class="accsub01" id="btn_send_voice" >发送验证码</a><!--或<a style="margin:0 5px;" class="accsub01" id="btn_send_sms" >短信验证码</a>--></li>
	<p id="voice_tip_view" style="padding-left: 118px;display:none;"><span style="width:14px; height:14px; background:url(/2.0/images/tip-s5a01e083c6.png) no-repeat; background-position:-1px -247px; display:inline-block; vertical-align:middle; margin:0 5px 3px 3px;"></span><font style="font-size: 15px;color: #e1b43d;">正在给您致电，请注意接听</font></p>
	<li id="error_confirm" class="red"></li>

    </ul>
    <span class="listsub"><a class="accsub01" id="submitBtn" >确认借款</a></span>
    </div><!--end-->
</div>

<div id="box02" style="display:none;">
    <div class="borrowingdialog">
    <h2 class="titlecuss"><img src="images/bicon01.png" tppabs="https://xin/2.0/images/bicon01.png" width="32" height="32" />您的借款申请提交成功！</h2>
    <span class="cussfont">　　请耐心等待审核，审核通过后会发布借款项目,借款成功后我们将会通过短信及邮件通知您。项目发布前您可通过“借款记录”菜单点击“未成功的借款”查看或撤销借款，项目发布后不可撤销。</span>
    <span class="cusssub"><a href="javascript:void(0)" class="accsub02">查看详情</a> <a href="javascript:void(0)" class="accsub01">确 定</a></span>
    </div><!--end-->
</div>

<div id="unsuccessLoan" style="display:none;">
    <div class="borrowingdialog" style="width:640px;">
    <span id="summaryInfo" class="weicuss">-</span>
    <div class="weitable IntegralBox">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <thead>
  <tr>
    <th style="width:120px" align="center">申请时间</th>
    <th align="center">借款金额</th>
    <th align="center">借款期限</th>
    <th align="center">还款方式</th>
    <th align="center">利率</th>
    <th align="center">状态</th>
    <th style="width:80px" align="center">备注</th>
  </tr>
  </thead>
  <tbody id="unsuccessLoanList">
  <tr>
    <td align="center">2015-05-25 10:00:00</td>
    <td align="center">99999.99元</td>
    <td align="center">12个月</td>
    <td align="center">等额本息</td>
    <td align="center">15.6%</td>
    <td align="center"><a href="javascript:void(0)" class="orange" title="等待审批">待审批</a></td>
    <td align="center"><a href="javascript:void(0)" class="blue">放弃借款</a></td>
  </tr>
  <tr class="bg">
    <td align="center">2015-05-25 10:00:00</td>
    <td align="center">99999.99元</td>
    <td align="center">12个月</td>
    <td align="center">等额本息</td>
    <td align="center">15.6%</td>
    <td align="center"><a href="javascript:void(0)" class="orange" title="等待审批">撤销申请</a></td>
    <td align="center"><a href="javascript:void(0)" class="blue">删除记录</a></td>
  </tr>
  </tbody>
</table>
<div id="unsuccessLoanBtn" class="AccFontPage right"><a href="#">上一页</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><span>4</span><a href="#">5</a><a href="#">6</a><a href="#">下一页</a></div>
    </div>
    </div><!--end-->
</div>

<div id="refund_plan_dlg" style="display:none;">
    <div class="borrowingdialog">
    <div class="jiekuan">
    <h2>借款详情</h2>
    <ul>
    <li><span class="libox"><i class="icon01"><img src="images/bicon05.png" tppabs="https://xin/2.0/images/bicon05.png" /></i><h3>申请借款</h3><p id="apply_time">-</p></span></li>
    <li><span class="libox"><i class="icon01 iconpadd"><img src="images/bicon07.png" tppabs="https://xin/2.0/images/bicon07.png" /></i><h3>借款项目发布</h3><p id="project_publish_time">-</p></span></li>
    <li><span class="libox"><i class="icon01" ><img src="images/bicon06.png" tppabs="https://xin/2.0/images/bicon06.png" /></i><h3>借款成功</h3><p id="loan_time">-</p></span></li>
    <li id="overduePic" class="libg01" style="display:none;"><span class="libox"><i class="icon01"><img src="images/bicon02.png" tppabs="https://xin/2.0/images/bicon02.png" /></i><h3>逾期中</h3><p>逾期金额：<span id="overdueTerms">-</span> 期 <span id="overdueSum">-</span> 元</p></span></li>
    <li id="returnedPic" class="libg02" style="display:none;"><span class="libox"><i class="icon01"><img src="images/bicon04.png" tppabs="https://xin/2.0/images/bicon04.png" /></i><h3>还款完成</h3><p id="rtime">-</p></span></li>
    <li id="returningPic" class="libg03" style="display:none;"><span class="libox"><i class="icon01"><img src="images/bicon03.png" tppabs="https://xin/2.0/images/bicon03.png" /></i><h3>还款中</h3><p>未还金额：<span id="toReturnTerms1">-</span> 期 <span id="toReturnSum1">-</span> 元</p></span></li>
    </ul>
    <div class="clear"></div>
    <h4><span class="left">借款金额：<span id="money1" class="red">-</span> 元</span><span class="left">还款方式：<span id="returnType1">-</span></span><span class="left">借款期限：<span class="red" id="deadline1">-</span>个月</span><span class="left">利率：<span id="rate1" class="red">-</span> %</span><a id="sectionLoanDetail" href="javascript:void(0)" target="_blank" class="right blue">借款项目详情</a></h4>
    <div class="clear"></div>
    </div>
    <h3 class="jiekuantitle">借款总成本：<span id="totalCost" class="red">-</span> 元 <span class="fontsize">（借款利息 <span id="totalInterest1">-</span> 元, 融资服务费 <span id="manageFee1">-</span> 元, 风险准备金 <span id="riskFund1">-</span> 元）</span><a href="../contract/api_loan-lid=.htm" tppabs="https://xin/contract/api_loan?lid=" target="_blank"  style="display:none;">借款合同</a></h3>
    <div class="weitable IntegralBox">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <thead>
  <tr>
    <th align="center">期数</th>
    <th align="center">应还日期</th>
    <th align="center">本金</th>
    <th align="center">利息</th>
    <th align="center">本金+利息</th>
    <th align="center">状态</th>
    <!--  <th align="center">备注</th>-->
  </tr>
  </thead>
  <tbody id="rd_tbody">
  <tr style="display:none">
    <td align="center">1</td>
    <td align="center">2015-05-25</td>
    <td align="center">99999.99元</td>
    <td align="center">99999.99元</td>
    <td align="center">99999.99元</td>
    <td align="center">已还款</td>
   <!-- <td align="center"><span class="jiekuanbox"><span class="orange">逾期还款，罚款541.121元</span><span class="infobox"><p><span class="c999">2015-05-01 12:00:00</span> 账户余额还款<span class="red">99.99</span>元</p><p><span class="c999">2015-05-01 12:00:00</span> 银行卡还款<span class="red">999999.99</span>元</p><b><img src="images/bicon08.png" /></b></span></span></td>-->
  </tr>

  </tbody>
</table>
<div id="pageBtn" class="AccFontPage right"><a href="#">上一页</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><span>4</span><a href="#">5</a><a href="#">6</a><a href="#">下一页</a></div>
<div class="clear"></div>
    </div>
    <div class="jiekuaninfo"><i class="AllIcon"></i>还款提示：请确保在还款日前一天账户余额不小于当日应还金额，系统将在账户中自动扣除以完成还款</div>
  </div><!--end-->
</div>

<div id="refund_box" style="display:none;">
    <div class="borrowingdialog">
		<span class="repayment">当前账户暂无未还记录，感谢您的关注！</span>
		<div class="repaymentsub"><a href="javascript:void(0)" class="accsub01" id="refund_box_ok">确定</a></div>
	</div>
</div>

<div id="refund_box2" style="display:none;">
	<div class="borrowingdialog" style="display:none;">
		<span class="repayment">当前账户暂无未还记录，感谢您的关注！</span>
		<div class="repaymentsub"><a href="javascript:void(0)" class="accsub01">确定</a></div>
	</div>
	<div class="borrowingdialog">
		<span class="repayment">提示：系统会在还款日自动扣款，请确保账户余额充足。借款逾期将会影响您的芝麻信用、人民银行信用记录、银行贷款申请等。</span>
		<ul class="repaylist">
		<li>未还金额：<font class="red" id="all_refund_money">--</font>元</li>
		<li id="refund_money_view" style="display:none;">本期应还金额：<font id="refund_date" class="red">--</font> <font class="red" id="refund_money">--</font>元</li>
		<li id="overdue_money_view" style="display:none;">逾期金额：<font class="red" id="overdue_money">--</font>元</li>
		<li>账户余额：<font class="red" id="account_money">--</font>元    ( 包含信存宝  )</li>
		<li id="overdraft_view_1" style="display:none;"><i class="AllIcon iconI"></i>账户余额足够本期还款，系统将在还款日自动扣除</li>
		<li id="overdraft_view_2" style="display:none;"><i class="AllIcon iconI"></i>账户余额还差<font class="red" id="overdraft_refund">--</font>元，请及时充值</li>
		<li id="overdraft_view_3" style="display:none;"><i class="AllIcon iconI"></i>账户余额还差<font class="red" id="overdraft_overdue">--</font>元，请及时充值</li>
		</ul>
		<div id="refund_btn_view_ok" class="repaymentsub" style="display: none;"><a href="javascript:void(0)" class="accsub01" id="refund_box_ok">确定</a></div>
		<div id="refund_btn_view_recharge" class="repaymentsub" style="display: none;"><a href="javascript:void(0)"  class="accsub01" id="refund_box_recharge">立即充值</a>
		 <!-- <a href="javascript:void(0)" class="blue paddingleft" id="refund_box_cancel">取消</a> -->
		 </div>
	</div>
</div>

<div id="authorize_box" style="display:none;">
	<div class="borrowingdialog" style="width:450px; height:240px;">
		<div class="black25"></div>
		<div class="black10"></div>
		<dl>
			<dt><i class="icondagth"></i></dt>
			<dd><h2>您还未完成征信和信息使用授权</h2><p class="t-font"><span class="orange">提示：</span>查看《征信和信息使用授权书》并同意授权才<br />能获得借款额度</p></dd>
			<div class="clear"></div>
		</dl>
		<div class="black25"></div>
		<div class="black10"></div>
		<div class="repaymentsub"><a id="authorize_box_ok" href="javascript:void(0)" class="accsub01">查看授权书</a> <a id="authorize_box_cancel" href="javascript:void(0)" class="accsub02">以后再说</a></div>
	</div>
</div>

<div id="authorize_box2" style="display:none;">
<div class="borrowingdialog" style="width:700px; height:550px;">
<div class="borrowin_shouquan">
<div class="shouquan_font scroll">
  <p ><b>重要提示：</b></p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;为了保障您的合法权益，您应当阅读并遵守本授权书，请您务必审慎阅读、充分理解本授权书条款内容，特别是免除或者减轻深圳市信融财富投资管理有限公司（以下简称&#8220;信融财富&#8221;）责任，或限制您权利的条款，其中免除或者减轻责任条款可能以加粗形式提示您注意。 </p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;除非您已阅读并接受本授权书所有条款，否则您无权使用信融财富平台提供的服务。您的使用、登录等行为即视为您已阅读并同意本授权书条款的约束。 </p>
  <!--<ol>
    <li>一 、本人同意并不可撤销的授权：信融财富按照国家相关规定采集符合法律法规规定的本人个人信息及包括信贷信息在内信用信息（含本人在信融财富处办理业务时产生的不良信息），并可以向中国人民银行金融信用信息基础数据库、其他依法设立的征信机构提供以上信息。 </li>
  </ol>-->
  <p >一 、本人同意并不可撤销的授权：信融财富按照国家相关规定采集符合法律法规规定的本人个人信息及包括信贷信息在内信用信息（含本人在信融财富处办理业务时产生的不良信息），并可以向中国人民银行金融信用信息基础数据库、其他依法设立的征信机构提供以上信息。 </p>
  <p >二、本人同意并不可撤销的授权：相关依法设立的征信机构有权在保证本人信息安全 </p>
  <p >的前提下，保存、整理、加工通过合法途径采集的本人信息，并向经本人授权同意的中国 </p>
  <p >境内的其他信息使用者提供。但是，法律规定可以不经同意的除外。 </p>
  <p >三、本人同意并不可撤销的授权：信融财富可以根据国家有关规定，通过中国人民银行金融信用信息基础数据库、其他依法设立的征信机构、公安部公民身份信息数据库查询、打印、保存符合法律法规规定的本人个人信息和包括贷款信息在内的信用信息。用途如下： </p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;1、审核本人、本人配偶或本人作为法定代表人、出资人或主要经营负责人的公司或企业贷款申请等业务的事前、事中、事后情况进行审查； </p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;2、处理贷后管理事务； </p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;3、处理本人征信异议 ；</p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;4、依法或经有权部门要求； </p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;5、向本人推荐产品及服务（贵司在推荐时，贵司向本人提供退订功能）； </p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;6、其他经过本人同意的合法用途； </p>
  <p >四、本人同意并不可撤销的授权：信融财富通过依法设立的征信机构如芝麻信用管理有限公司、深圳前海征信中心股份有限公司、北京安融惠众征信有限公司向其他拥有合法资质的第三方（包括但不限于其他拥有合法资质的征信机构，运营商及其代理商、关联公司，公安部身份信息查询中心等）查询或核实本人信息，并同意征信机构将查询获取的信息进行保存、整理、加工，并用于评价本人信用情况或核实本人信息的真实性。但法律、法规、监管政策禁止查询的除外。 </p>
  <p >五、本人知悉在信息安全保障制度不完善的情况下，对外提供本人个人收入、存款、有价证券、商业保险、不动产的信息和纳税数额信息（合称&#8220;财产性信息&#8221;）可能产生信息泄漏等不良影响，但是，在信融财富及接受前述财产性信息的征信机构承诺保障信息主体本人信息安全的前提下，本人同意授权信融财富向相关依法设立的征信机构提供前述财产性信息。 </p>
  <p >六、本人同意并不可撤销的授权：相关依法设立的征信机构有权从中国平安保险（集团）股份有限公司及其直接或间接控股的公司，以及中国平安保险（集团）股份有限公司直接或间接作为其单一最大股东的公司采集本人的个人信息（包括不良信息），但不包括法律、行政法规规定禁止采集的个人信息。 </p>
  <p >&nbsp;</p>
  <p >授权人声明： </p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;本授权书是本人向信融财富作出的单方承诺，效力具有独立性，不因借款合同的任何条款无效而失效。 </p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;本授权书自本人作出授权承诺之日起生效，自本人重新签署新的授权书或签署解除授权的书面文件，且新的授权书或文件送达被授权方之日起终止。 </p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;若本人与被授权人发生任何纠纷或争议，首先应友好协商解决；协商不成的，本人同意将纠纷或争议提交本授权书签订地（即深圳市福田区）人民法院管辖。本授权书的成立、生效、履行。解决及纠纷解决，适用中华人民共和国大陆地区法律（不包括冲突法）。 </p>
  <p >&nbsp;&nbsp;&nbsp;&nbsp;本人已知悉本授权书所有内容（特别是加粗字体内容）的意义以及由此产生的法律效力，自愿作出上述授权，本授权书是本人真实的意思表示，本人同意承担由此带来的一切法律后果。 </p>
  <p >特此授权！&nbsp;&nbsp;&nbsp;&nbsp; </p>
</div>
</div>
<div class="repaymentsub"><a id="authorize_box2_ok" href="javascript:void(0)" class="accsub01">同意授权</a> <a id="authorize_box2_cancel" href="javascript:void(0)" class="accsub02">以后再说</a></div>
</div>
</div>

<form id="uShieldFrom" action="" method="post" target="_blank">
<input type="hidden" id="appKey" name="appKey" />
<input type="hidden" id="timestamp" name="timestamp" />
<input type="hidden" id="returnUrl" name="returnUrl" />
<input type="hidden" id="notifyUrl" name="notifyUrl" />
<input type="hidden" id="orderNo" name="orderNo" />
<input type="hidden" id="name" name="name" />
<input type="hidden" id="certNo" name="certNo" />
<input type="hidden" id="certType" name="certType" />
<input type="hidden" id="sign" name="sign" />
</form>

<div  id="sidebar-login-box" style="display: none; ">
<div class="wgt-dialog wgt-dialog-login" >
    <fieldset class="ui-form">
        <form id="rapid-login-form" method="post" action="https://xin/v2/login/login.jso">
            <h3 class="wgt-dialog-title">信融财富用户登录</h3>
            <div class="ui-form-line">
                <label for="username" class="ui-form-label">账　号：</label>
                <input type="text" name="username" id="rapid-userName" class="ui-form-input" maxlength="50" tabindex="1" placeholder="账户名 / Email / 手机号"/>
                <a href="views/account/register4.0.shtml.htm" tppabs="https://xin/2.0/views/account/register4.0.shtml" class="blue" target="_blank">注册账号</a>
            </div>
            <div class="ui-form-line">
                <label for="password" class="ui-form-label">密　码：</label>
                <input type="password" name="password" id="rapid-userPw" class="ui-form-input" maxlength="16" tabindex="2" placeholder="登录密码"/>
                <a href="views/account/back_password.shtml.htm" tppabs="https://xin/2.0/views/account/back_password.shtml" class="blue" target="_blank">忘记账号/密码？</a>
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
                <img src="images/Connect_logo_7.png" tppabs="https://xin/2.0/images/Connect_logo_7.png" onclick=" AA.RapidLogin.qqClick();" style="cursor:pointer; margin-left:8px;"></img>
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
            <h1><img src="images/c-login1.gif" tppabs="https://xin/2.0/images/c-login1.gif" width="68" height="93" /><span><i class="icondagou"></i>登录成功</span></h1>
            </div>
            </div>
        </form>
    </fieldset>
</div> 

</div>
<script type="text/javascript" src="js/rsa.js" tppabs="https://xin/2.0/js/rsa.js"></script>
<script type="text/javascript" src="../webapp2.0/js/wbox.js" tppabs="https://xin/webapp2.0/js/wbox.js"></script>
<link rel="stylesheet" href="css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css">
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" target="_blank">关于我们</a></h2><p><a href="views/about/team.shtml.htm" tppabs="https://xin/2.0/views/about/team.shtml" target="_blank">团队介绍</a></p><p><a href="views/about/xr_history.shtml.htm" tppabs="https://xin/2.0/views/about/xr_history.shtml" target="_blank">发展历程</a></p><p><a href="views/about/xr_credit.shtml.htm" tppabs="https://xin/2.0/views/about/xr_credit.shtml" target="_blank">资质荣誉</a></p><p><a href="views/about/partner.shtml.htm" tppabs="https://xin/2.0/views/about/partner.shtml" target="_blank">合作机构</a></p></li>
<li><h2><a href="views/about/help.shtml.htm" tppabs="https://xin/2.0/views/about/help.shtml" target="_blank">帮助中心</a></h2><p><a href="views/about/guide/guide1.shtml.htm" tppabs="https://xin/2.0/views/about/guide/guide1.shtml" target="_blank">新手指引</a></p><p><a href="views/about/help.shtml-tab=tab1.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab1" target="_blank">问题答疑</a></p><p><a href="views/about/help.shtml-tab=tab10.htm" tppabs="https://xin/2.0/views/about/help.shtml?tab=tab10" target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum-49-1.html'" tppabs="http://bbs.xinrong.com/forum-49-1.html" target="_blank">意见反馈</a></p></li>
<li><h2><a href="views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" target="_blank">信息中心</a></h2><p><a href="views/about/xr_announcement.shtml.htm" tppabs="https://xin/2.0/views/about/xr_announcement.shtml" target="_blank">平台公告</a></p><p><a href="views/about/media_report.shtml.htm" tppabs="https://xin/2.0/views/about/media_report.shtml" target="_blank">媒体报道</a></p><p><a href="views/about/activitysum.shtml.htm" tppabs="https://xin/2.0/views/about/activitysum.shtml" target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum.php'" tppabs="http://bbs.xinrong.com/forum.php" target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="vip.html" tppabs="https://xin/2.0/vip.html" target="_blank">VIP特权</a></p><p><a href="../gift.htm" tppabs="https://xin/gift" target="_blank">积品汇</a></p><p><a href="../action/jf.htm" tppabs="https://xin/action/jf" target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><img src="../s/img/w02.jpg" tppabs="https://xin/s/img/w02.jpg" width="100"><h4>关注服务号</h4></li><li><img src="../s/img/w05.jpg" tppabs="https://xin/s/img/w05.jpg" width="100"><h4>关注订阅号</h4></li><li><img src="../s/img/w06.jpg" tppabs="https://xin/s/img/w06.jpg" width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'" tppabs="http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5" title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><img src="images/qq.png" tppabs="https://xin/2.0/images/qq.png" width="120"><h4>QQ号：4007779888</h4></li>
</ul></li>
<li class="fb03"><a href="javascript:if(confirm('http://weibo.com/u/2719695463?profile_ftype=1&is_all=1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0'" tppabs="http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0" target="_blank" title="微博"><i class="AllIcon icon03"></i></a></li>
</ul>
</div>
</div>
<div class="footer_app right">
  <img src="../s/img/w07.jpg" tppabs="https://xin/s/img/w07.jpg" width="122" class="bimg" /><h2>下载手机客户端<i class="AllIcon icon01"></i> <i class="AllIcon icon02"></i></h2> </div>
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
<div class="footer_font main"><p> <a href="../about/privacy.htm" tppabs="https://xin/about/privacy" target="_blank">隐私保护申明</a> 　|　 <a href="../about/agreement.htm" tppabs="https://xin/about/agreement" target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright Xinrong.com All Rights Reserved   信融财富投资管理有限公司</div>
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
						url:'../v2/communication/free_consulation.jso'/*tpa=https://xin/v2/communication/free_consulation.jso*/,
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

<script type="text/javascript" src="js/channel.js" tppabs="https://xin/2.0/js/channel.js"></script>
<script>
var _hmt = _hmt || [];
(function() {
	var agent=navigator.userAgent;

	if(agent.indexOf('android')==-1&&agent.indexOf('Android')==-1){
		var hm = document.createElement("script");
		hm.src = "../../hm.baidu.com/hm.js-a5ef11ea1e672f6b504ec7fe5a92cf30"/*tpa=https://hm.baidu.com/hm.js?a5ef11ea1e672f6b504ec7fe5a92cf30*/;
		 var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	}
})();
</script>
<script>
(function() {
	$.ajax({
		url:'../v2/login/in_session_data.jso'/*tpa=https://xin/v2/login/in_session_data.jso*/,
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
		<option>广东发展银行</option>\
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
		<a href="../my/rechargec-quick=1;.htm"/*tpa=https://xin/my/rechargec?quick=1;*/ class="sub02">去充值认证<span class="infobox">需用无网银快捷安全支付充值至少2元，充值成功后该银行卡立即锁定；提现银行卡将不能更改<b><img src="images/bicon.png"/*tpa=https://xin/2.0/images/bicon.png*/ /></b></span></a>\
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
		<div class="dialogsub"><a href="../my/recharge.htm"/*tpa=https://xin/my/recharge*/ class="sub02">立即充值</a> <span><i class="AllIcon iconi"></i>需充值5.00元</span></div>\
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
							window.location="https://xin/2.0/section1_clock.png";
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
										//window.location.href = 'id_bank_fee_auth.html'/*tpa=https://xin/2.0/id_bank_fee_auth.html*/;
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
</body>
</html>