<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>信融财富 - 上市公司战略投资，P2P网贷专业互联网投资理财平台 - 我的账户</title>
    <script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<!--<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->    <link rel="stylesheet" href="../s/css/global.css-v=1591.css"  />
<link rel="stylesheet" href="../s/css/www/user.css-v=1591.css"  />
    <link rel="stylesheet" href="../s/vendor/artDialog/skins/default.css-v=1591.css"  />
    <script>var G_ENV_VAR = {WWW:'https://xin/',STATIC:'http://s.xinrong.com/',BBS:'http://bbs.xinrong.com/',UID:'',UNAME:'',MSG_NUM:'',VIP: '',IS_CHECKED_EMAIL: false,IS_CHECKED_MOBILE: false,HAS_TRADE_PASSWORD: false,IS_CHECKED_IDENTIFICATION: false,IS_CHECKED_BANKCARD: false}</script>
<script src="../s/js/lib/jquery.min.js-v=1591" ></script>
<script src="../s/js/AA.base-min.js-v=1591" ></script>
<script type="text/javascript" src="../2.0/js/rsa.js" ></script>
<script type="text/javascript" src="/xin/my/myjs/deposit.js"></script>
</head>
<style>
.rule_font{ padding:40px 0 0 12px; clear:both; line-height:23px;}
.rule_font h4{ font-size:14px; font-weight:bold; line-height:40px;}
.rule_font table{border-collapse: collapse; border: solid 1px #777;}
.rule_font table td{ border: solid 1px #777; height:23px; padding:5px 0; text-align:center;}
.rule_font p{ color:#888; padding:5px 0;}
</style>
<body class="channel-my">
<style>
.FontBg{}
.FontN{ display:block; width:9px; height:11px; position:absolute; right:3px; top:-7px;}
.FontLi{ padding-left:10px;}
.FontLi img{ vertical-align:top; position:relative; margin-top:-2px;}
.FontLi a{ padding-left:3px; color:red}

.top-links{ width:75%;}
.top-links a.Tpor, .top-menu a.Tpor{ position:relative; padding-right:15px; padding-left:9px;}
.top-links a.FontMar, .top-menu a.FontMar{ margin-left:10px;}
.top-menu a.weibo01{ margin:0px 0 0 -2px; padding-top:1px; display:inline-block;}
.top-menu a.weixing{ padding: 0 6px 0 0; margin-left: -5px; display:inline-block;}

.g-topnav .g-grid{ font-family:"microsoft yahei";}

.weixingbox{ width:642px; text-align: left; }
.weixingbox .boxbg{ background:#fff; padding:10px 20px; position:relative;}
.weixingbox .boxbg h1{ text-align:center; height:32px; line-height:32px; font-size:14px; color:#000; font-weight:bold; padding-left:10px;}
.weixingbox .boxbg h2{ text-align:center; padding:4px 0 0px 0; height:28px; line-height:28px; font-size:16px; color:#323230; font-family:"黑体"; font-weight:bold;}
.weixingbox .boxbg h2 img{ vertical-align:top; padding-right:6px; margin-top:2px;}
.weixingbox .boxbg h2 span{ font-family:Arial;}
.weixingbox .boxbg .boxpic{ width:301px; padding:15px 0 0 0px; text-align:center; float:left;}
.weixingbox .boxbg .boxfont{ line-height:18px; color:#666; font-size:14px; padding:5px 0 20px 15px;}
.weixingbox .boxbg .boxApp{ padding:5px 0 8px 0; text-align:center;}
.weixingbox .boxbg .boxfont span{ color:#f60;}
.weixingbox .boxbg .BoxClose{ position:absolute; top:4px; right:4px;}

.appbox{ width:682px;}
.appbox .boxbg{ width:301px; float:left;}

.hetong .i-title{ display:none;}
.hetong:hover .i-title{ width:280px; color:#444; display:block; position:absolute; left:-140px; bottom:-28px; background: #f6f9fd; border: 1px solid #999999; border-radius:3px; line-height:20px; z-index:8;}
.hetong:hover b{ display: inline-block; position: absolute; left: 50%; top: -14px; margin-left:2px;}
</style>


<script>

	var dd=null,dd1=null;

	function show_weixin(){
		
		if(dd!=null&&dd!=undefined){
			dd.visible();
			return;
		}
		
		var drd= $.popup1({
           title:'' ,
           width:'341',
           padding:'0',
           content:'<div class="weixingbox" >\
               <div class="boxbg"><h2>信融财富微信公众平台</h2>\
               <div class="BoxClose"><a href="javascript:close_weixin();"><img src="../s/img/close.jpg"/*tpa=https://xin/s/img/close.jpg*/ /></a></div>\
               <div class="boxpic"><img src="../s/img/w02.jpg"/*tpa=https://xin/s/img/w02.jpg*/ /><div class="boxfont"><span style="color:#0078b6;">服务号：</span>扫描或在微信添加公众号<br/>搜索<span>信融财富</span>关注</div>\</div>\
               <div class="boxpic"><img src="../s/img/w05.jpg"/*tpa=https://xin/s/img/w05.jpg*/ width="232" /><div class="boxfont"><span style="color:#0078b6;">订阅号：</span>扫描或在微信添加公众号搜<br/>索<span>信融财富投融资平台</span>关注</div>\</div>\
               </div>\
               </div>',
          
           init:function (d ) {
        	   
           }
			 
		 });

		 dd=drd;
	}

	function close_weixin(){
		
		dd.hidden();
	}
	
	
	function show_App(){
		
		if(dd1!=null&&dd1!=undefined){
			dd1.visible();
			return;
		}
		
		var drd= $.popup1({
           title:'' ,
           width:'682',
           padding:'0',
           content:'<div class="weixingbox appbox">\
               <div class="boxbg"><h2><img src="../s/img/App.jpg"/*tpa=https://xin/s/img/App.jpg*/ /><span>iPhone</span>版客户端</h2>\
               <div class="BoxClose" style="display: none"><a href="javascript:close_App();"><img src="../s/img/close.jpg"/*tpa=https://xin/s/img/close.jpg*/ /></a></div>\
               <div class="boxpic"><img src="../s/img/w03.jpg"/*tpa=https://xin/s/img/w03.jpg*/ /></div>\
               <div class="boxfont boxApp">扫描或在AppStore搜索"<span>信融财富</span>"下载</div>\
               </div>\
			   <div class="boxbg"><h2><img src="../s/img/android.jpg"/*tpa=https://xin/s/img/android.jpg*/ /><span>Android</span>版客户端</h2>\
               <div class="BoxClose"><a href="javascript:close_App();"><img src="../s/img/close.jpg"/*tpa=https://xin/s/img/close.jpg*/ /></a></div>\
               <div class="boxpic"><img src="../s/img/w04.jpg"/*tpa=https://xin/s/img/w04.jpg*/ /></div>\
               <div class="boxfont boxApp" style="text-align: left;padding-left: 35px;">扫描或<a href="../s/apk/Xinrong_V2.06_16.4.5.apk"/*tpa=https://xin/s/apk/Xinrong_V2.06_16.4.5.apk*/ style="color: #0078b6;text-decoration: underline;">本地下载</a>。<br/>在豌豆荚等应用市场搜索“<span>信融财富</span>”下载。</div>\
               </div>\
               </div>',
          
           init:function (d ) {
        	   
           }
			 
		 });

		 dd1=drd;
	}

	function close_App(){
		
		dd1.hidden();
	}
	
</script>







<style>


.g-nav1 li {

	width:99px; 
	
	text-align:center; 
	
	height:54px; 
	
	line-height:54px; 
	
	
	float:left;
}

.g-nav1{
	
	width:665px; 
	
	padding:10px 0 0 0;


	
}
.g-header{ border:none;}
.g-header .g-grid{ padding-top: 0px; padding-bottom:0px;}
.g-logo{ padding: 10px 0 10px 0; height:auto; background:none; line-height:0px;}
.PositionR{ position:relative;}
.main{ width:1100px; margin:0 auto;}
.h-navhe{ width:100%; min-width:1100px; background:#fff; height:49px;}
.hmenu_nav{ width:100%; min-width:1100px; background:#fff; position:relative; z-index:99; font-family:"微软雅黑";}
.hmenu_nav .logo{ padding:5px 0 10px 0;}
.hmenu_nav .logo .logo_font{ display:block; position:absolute; left:48px; top:0px; background:#ee8f07; line-height:18px; font-size:12px; color:#fff; -webkit-border-bottom-left-radius:4px; -moz-border-bottom-left-radius:4px; border-bottom-left-radius:4px; -webkit-border-bottom-right-radius:4px; -moz-border-bottom-right-radius:4px; border-bottom-right-radius:4px; padding:0 8px; text-decoration:none;}

.h_por{ position:fixed; left:0px; top:0px;}
.hmenu_nav .h_nav{ width:100%; height:49px; background:#fefdfd; border:solid #f5f3f3;border-width: 1px 0 0; box-shadow: 0px 3px 5px rgba(0,0,0,0.1);}
.hmenu_nav ul{ list-style:none;}
.hmenu_nav ul li{ padding:0 10px; float:left; position:relative;}
.hmenu_nav ul li a{ width:106px; height:49px; line-height:49px; text-align:center; font-size:16px; color:#444; display:block;}
.hmenu_nav ul li a .iconhot{ width:26px; height:16px; display:inline-block; background:url("../2.0/images/hot.png"/*tpa=https://xin/2.0/images/hot.png*//*tpa=https://xin/2.0/images/hot.png*/) no-repeat; position:absolute; right:10px; top:5px;}
.hmenu_nav ul li a .hh_icon{ width:34px; height:21px; display:inline-block; position:absolute; right:3px; top:-2px;}
.hmenu_nav ul li a .arrow{ width:13px; height:8px; display:inline-block; vertical-align:middle; background:url("../2.0/images/t-n.png"/*tpa=https://xin/2.0/images/t-n.png*//*tpa=https://xin/2.0/images/t-n.png*/) no-repeat; margin-left:5px;}
.hmenu_nav ul li:hover a{ color:#f60; text-decoration:none;}
.hmenu_nav ul li:hover a .arrow{ background:url("../2.0/images/t-n.png"/*tpa=https://xin/2.0/images/t-n.png*//*tpa=https://xin/2.0/images/t-n.png*/) no-repeat; transform:rotate(180deg); -ms-transform:rotate(180deg); -moz-transform:rotate(180deg); -webkit-transform:rotate(180deg); -o-transform:rotate(180deg);}
.hmenu_nav ul li.cur a{ color:#fff; background:#f60;}
.hmenu_nav ul li.cur a .arrow{ background:url("../2.0/images/t-n01.png"/*tpa=https://xin/2.0/images/t-n01.png*//*tpa=https://xin/2.0/images/t-n01.png*/) no-repeat; transform:rotate(180deg); -ms-transform:rotate(180deg); -moz-transform:rotate(180deg); -webkit-transform:rotate(180deg); -o-transform:rotate(180deg);}
.hmenu_nav ul li ul{ display:none;}
.hmenu_nav ul li:hover ul{ width:106px; background:#fff; border-bottom-left-radius:10px; border-bottom-right-radius:10px; position:absolute; left:10px; top:49px; display:block; padding:0 0 10px 0px;}
.hmenu_nav ul li:hover ul li{ width:100%; padding:0px;}
.hmenu_nav ul li:hover ul li a{ width:100%; padding:0px; border:0px; color:#444; font-size:14px; height:38px; line-height:38px; background:#fff;}
.hmenu_nav ul li:hover ul li a:hover{ border:0px; color:#f60;}
.hmenu_nav ul li:hover ul li a.cur{ border:0px; color:#f60;}

.hmenu_nav .h_nav .nav_r{ position:absolute; right:0px; top:0px; font-size:16px; color:#d8d8d8; line-height:49px;}
.hmenu_nav .h_nav .nav_r a{ text-decoration:none; padding:0 13px;}
.hmenu_nav .h_nav .nav_r a:hover{ color:#f60;}
.hmenu_nav .h_nav .nav_r a.cur{ color:#f60;}

.hmenu_nav .top_my{ padding-top:30px;}
.hmenu_nav .top_my .f-my{ display:inline-block; line-height:27px; margin-right:15px; font-size:14px; float:left;}

.hmenu_nav .f_exit{ font-size:13px; line-height:30px; color:#f60; float:left;}
.hmenu_nav .f_exit:hover{ color:#f60; text-decoration:none;}
.hmenu_nav .h-login-reg{ position:relative; width:100px; height:26px; line-height:26px; border:1px solid #f60; -webkit-border-radius:15px; -moz-border-radius:15px; border-radius:15px; display:none; float:left;}
.hmenu_nav .h-login-reg i{ width:50px; height:26px; display:block; position:absolute; left:0px; top:0px; background:#f60; color:#fff; -webkit-border-radius:15px; -moz-border-radius:15px; border-radius:15px; -webkit-transition: all .5s ease-in; -moz-transition: all .5s ease-in; transition: all .5s ease-in;}
.hmenu_nav .h-login-reg a{ display:inline-block; width:50px; text-align:center; text-decoration:none; position:relative; z-index:0; color:#444; -webkit-transition: all .5s ease-in; -moz-transition: all .5s ease-in; transition: all .5s ease-in;}
.hmenu_nav .h-login i{ left:0px;}
.hmenu_nav .h-login .flogin{ color:#fff;}
.hmenu_nav .h-reg i{ left:50px;}
.hmenu_nav .h-reg .freg{ color:#fff;}

</style>



<div class="hmenu_nav">
  <div class="main PositionR">
    <div class="logo left PositionR"><a href="../index.shtml.htm" ><img src="../2.0/images/logo.gif"  /></a><a href="../2.0/views/about/shareholder.shtml.htm"  class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="../2.0/views/account/account_index.shtml.htm" class="f-my" id="nav_my">我的账户</a> <a id="j-logout" href="../index.shtml.htm"  class="f_exit" style="display:none;">退出</a><span class="h-login-reg h-login"><i></i><a href="../2.0/login2.0.html"  class="flogin">登录</a><a href="../2.0/views/account/register4.0.shtml.htm"  class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="index.htm"  id="nav_index">首页</a></li>
        <li><a href="invest.shtml.htm"  id="nav_invest">投资<i class="arrow"></i></a>
        <ul>
        <li><a href="2.0/calculator.html#finvest"  target="_blank">投资计算器</a></li>
        <li><a href="finacing.html" id="finacing" >我要融资</a></li>
        </ul>
        </li>
        <li><a href="2.0/action/xr_huahua/huahua.shtml.htm"  id="nav_huahua">信融花花<i class="arrow"></i></a>
          <ul>
          	<li><a href="2.0/action/xr_huahua/huahua.shtml.htm"  target="_blank">我要借款</a></li>
            <li><a href="2.0/calculator.html"  target="_blank">借款计算器</a></li>
          </ul>
        </li>
        <li><a href="2.0/views/about/invest_help.shtml.htm"  id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="2.0/views/about/invest_help.shtml.htm"  target="_blank">投资帮助</a></li>
          	<li><a href="2.0/views/about/risk.shtml.htm"  target="_blank">风险控制</a></li>
            <li><a href="2.0/views/about/laws_regulations.shtml.htm#navLaws"  target="_blank">法律法规</a></li>
          </ul>
        </li>
        <li><a href="2.0/views/about/about.shtml.htm"  id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="2.0/views/about/about.shtml.htm"  id="nav_about_index">公司简介</a></li>
            <li><a href="2.0/views/about/team.shtml.htm" >团队介绍</a></li>
            <li><a href="2.0/views/about/service_data.shtml.htm" >运营数据</a></li>
            <li><a href="2.0/views/about/partner.shtml.htm" >合作机构</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="2.0/vip.html"  id="nav_vip">VIP特权</a></div>
    </div>
  </div>
</div>



<script>

(function() {
	
	var channel=location.href;

	var index=channel.lastIndexOf("/");

	if(index>0){
		channel=channel.substring(index+1,channel.length);
		
		if(location.href.indexOf("/my/")>0){
			$('#nav_my').css("color","#ea5511");
		}else if(location.href.indexOf("/about/")>0){
			$('#nav_index').css("color","#ea5511");
		}else if(location.href.indexOf("/gift/")>0){
			$('#nav_gift').css("color","#ea5511");
		}else{
			$('#nav_'+channel).css("color","#ea5511");
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
});

$(function(){
    // 固定导航
	$(window).scroll(function(){
		t=$(document).scrollTop();
		if(t>=0){
			$("#hmenu_nav").removeClass("h_por").css("top","78px;");
			}
		if(t>=60){
			$("#hmenu_nav").addClass("h_por").css("top","0px;");
			}
		});
})
</script><div class="black15"></div>
<div class="main">
    <div class="g-grid">
        

<style type="text/css">.side-nav #side-nav-zz b.iconReward{ width:26px; height:18px; 	background-image: url("../2.0/images/account/reward/prise.png"/*tpa=https://xin/2.0/images/account/reward/prise.png*//*tpa=https://xin/2.0/images/account/reward/prise.png*/);display:inline-block; margin:0 0 5px 5px;}</style>
<div class="side-nav g-well g-left">
     <h3><a id="side-nav-index" class="item" href="../2.0/views/account/account_index.shtml.htm" >账户首页</a></h3>
    <h3><a id="side-nav-xcb" class="item xcb" href="../2.0/xincunbao.shtml.htm" >信 存 宝<i>R</i></a></h3>
    <h3><a id="side-nav-invest" class="item" href="invest.htm" >投资管理</a></h3>
    <h3><a id="side-nav-borrowing"  class="item borrowing" href="../2.0/views/huahua/huahua.html" >信融花花</a></h3>
    <h3 style="display:none"><a id="side-nav-cash" class="item" href="recharge.htm" >充值提现</a></h3>
    <h3><a id="side-nav-consume" class="item current" href="consume.htm" >收支查询</a></h3>
    <h3><a id="side-nav-setting" class="item" href="../2.0/views/account/account_settings.shtml.htm" >账户设置</a></h3>
    <h3 ><a id="side-nav-msg" class="item" href="msg.htm" >我的消息</a></h3>
</div>        <div class="main-section g-right">
            <div class="form-header">
    <h3><a href="recharge.htm"  class="recharge">充值</a></h3>
    <h3><a href="deposit.htm"  class="last deposit current">提现</a></h3>
</div>            <div class="form-container deposit-form">

    <div class="account-info">
        <p>
            银行卡身份信息：
              姓：<span id="sf">123</span> ；银行：<span id="sf1"></span> ；卡号后四位：<span id="sf2"></span>                 
          <!--   请先进行<a class="blue" href="../2.0/views/account/account_settings.shtml.htm" >银行卡身份认证</a>        </p> -->
        <p class="ui-tip info">提现银行<span class="hl">开户名必须与认证的信融财富账户真实姓名一致</span>才能提现成功</p>
		<!-- <p id='bank_check_prompt' class="ui-tip info" >银行卡未认证可通过提现方式<span class="hl">认证</span>成功</p> -->
    </div>
    <fieldset class="ui-form">
        <form id="deposit-form" method="post" action="https://xin/my/myaadai/api_deposit" onsubmit="return false;">
            <div class="ui-form-line">
                <label>信融财富账户余额：</label><strong class="g-out"></strong> 元
                <em class="ui-tip">（其中<span class="recharge-money"></span>元充值后未投资）</em>
                <input type="hidden" id="hot_money" value=""/>
            </div>
            <div class="ui-form-line money" style="height:50px;padding-top:20px;">
                <label for="money">提现金额：</label>
                <input type="text" name="money" id="money" class="ui-form-input" value="" maxlength="10" autocomplete="off"/> 元
                <a id="auto_fill"  class="blue" style="margin: 0 0 0 5px;cursor:pointer;" >自动填写</a>
                <input type="text" class="fix-ie6 g-hide"/>

                <br/>
                <em class="ui-tip" style="margin-left:65px;">&nbsp;</em>
               
                <input type="hidden" id="curWithLimit" value="300000"/>
                <input type="hidden" id="curWithMoney" value=""/>
                <input type="hidden" id="curWithFee" value="2"/>
                <input type="hidden" id="lowest_get" value=""/>
            </div>
            <div class="ui-form-line" style="display:none;">
                 到账时间：周一~周六15:30前提现，国有银行可当天到账；15:30后提现，1~2工作日内到账。<a href="../help/faq/1.htm#20"  class="blue" target="_blank">详情</a>
            </div>
            <div class="ui-form-line" style="margin-top:0;">
                应付总额：<strong class="total-due orange">-</strong> 元
                <em class="fee-tip ui-tip g-hide">（<span class="general-fee"></span><span class="extra-fee"></span>）</em>
            </div>
            <div class="ui-form-line ui-form-action">
                <input class="ui-button ui-button-orange" type="submit" value="申请提现" /> <span class="ui-tip info" style="margin-left:15px;">申请后将不可撤销
                <p style="margin-left: 199px;color: #999;margin-top: -5px;">
                    普通用户每笔收取
                    <span class="g-out">2</span> 元手续费，VIP会员每笔收
                    <span class="g-out">0～1</span> 元手续费
                    <a href="../2.0/vip.html#privilege"  class="blue" target="_blank">详情</a>
                    <br/>
                    提现后赠送提现手续费用金额（不包含额外手续费）50%的投资礼金。充值后未投资的资金提现将收取额外<span class="exra-rate">0.5</span>%手续费
                </p>
                </span>
            </div>
        </form>
    </fieldset>

    <div class="rule_font">
    <h4>提现规则说明</h4>
    <table width="100%">
        				<tbody><tr>
        					<td colspan="3">提现到账时间表</td>
        				</tr>
        				<tr>
        					<td>提现时间</td>
        					<td>银行名称</td>
        					<td>到账时间</td>
        				</tr>
        				<tr>
        					<td rowspan="2">周一~周六15:30之前</td>
        					<td>工、农、建、交、招行、平安、浦发、<br>光大、民生、兴业</td>
        					<td>T+0</td>
        				</tr>
        				<tr>

        					<td>其他银行</td>
        					<td>T+0、T+1（具体时间以财付通实际情况为准）</td>
        				</tr>
						<tr>
        					<td>周一~周六15:30之后</td>
        					<td>所有银行</td>
        					<td>T+1、T+2</td>
        				</tr>
        				<tr>
        					<td>周日及法定节假日</td>
        					<td>所有银行</td>
        					<td>到账时间请以财付通实际情况为准</td>
        				</tr>

        			</tbody></table>
                    <p>注：<br />
①、T+0表示当天提现当天到账，T+1表示当天提现下个工作日内到账，T+2表示当天提现后两个工作日内到账；<br />
②、在没有财付通特别通知的情况下，承诺T+0到账银行一般在财付通受理后2小时内到账。<br />
③、少数情况由于第三方支付与部分银行的接口稳定性问题可能导致款项延迟到账；如未及时到账，请与我们工作人员核实处理。</p>
    </div>
</div>

<script>

$(function(){
	$.ajax({
		url : '../v2/login/in_session_data.jso'/*tpa=https://xin/v2/login/in_session_data.jso*/,
		type : 'post',
		dataType : 'json',
		data:{},
		success : function(data) {
			if(data.isAuthBankCard == 1){
				$('#bank_check_prompt').hide();
				$('#bank_authed_flag').show();
				$('#bank_notauthed_flag').hide();
			}else{
				$('#bank_check_prompt').show();
				$('#bank_authed_flag').hide();
				$('#bank_notauthed_flag').show();
			}
		}
	});
});
</script>
        </div>
    </div>
</div>
<div id="wgt-dialog-deposit-wrapper" class="g-hide">
    <div class="wgt-dialog wgt-dialog-safety-pay wgt-dialog-deposit">
        <fieldset class="ui-form">
            <form id="rapid-deposit-form" onsubmit="return false;">
                <div class="pay-confirm-form g-hide">
    <h3 class="wgt-dialog-title"></h3>
        <div class="ui-form-line">
        <label class="ui-form-label money-label">支付金额：</label>
        <strong class="g-out money"></strong> 元
    </div>
    <div class="ui-form-line ui-form-name">
        <label class="ui-form-label">账 户 名：</label>
        <span class="account-name"></span>
    </div>
    <div class="ui-form-line">
        <label class="ui-form-label">账户余额：</label>
        <span class="account-balance"></span> 元
        <input type="hidden" id="available_total_money" value=""/>
        <input type="hidden" id="reward_money" value=""/>
    </div>
    <div class="ui-form-line ui-form-pic-captcha" style="height: 34px;display:none;">
        <label for="captcha" class="ui-form-label">图形验证码：</label>
        <input type="text" name="captcha" id="captcha" class="ui-form-input" maxlength="4" style="width:80px;"/>
        <img src="" width="80" height="28" id="captcha_pic" title="看不清楚？换一个" style="position: absolute;padding-left: 4px;">
        <input type="hidden" id="seed">
    </div>
    <div class="ui-form-line ui-form-mobile-captcha" style="height: auto;display:none;">
        <label for="mobile_captcha" class="ui-form-label">手机验证码：</label>
        <input type="text" name="mobile_captcha" id="mobile_captcha" class="ui-form-input" maxlength="6" style="width:80px;"/>
        <input id="send_voice" type="button" class="ui-button2 ui-button-blue" tabindex="3" value="发送验证码"/>
        <p id="voice_tip_view" style="padding-left: 10px;display:none;"><span style="width:14px; height:14px; background:url(/2.0/images/tip-s5a01e083c6.png) no-repeat; background-position:-1px -247px; display:inline-block; vertical-align:middle; margin:0 5px 3px 3px;"></span><font style="font-size: 15px;color: #e1b43d;">正在给您致电，请注意接听</font></p>
    </div>
    <div class="ui-form-line ui-form-safe-pwd">
        <label for="safepass" class="ui-form-label">交易密码：</label>
        <input type="password" name="safepass" id="safepass" class="ui-form-input" maxlength="16"/>
        <div class="ui-tip"></div>
        <a href="../2.0/views/account/back_password.shtml-tab=2.htm"  class="blue" target="_blank">忘记交易密码？</a>
    </div>
    <div class="ui-form-line ui-form-action">
        <input type="text" class="g-hide" id="iefix"/>
        <input type="submit" class="ui-button ui-button-orange" tabindex="3" value="确认投资"/>
        <em class="ui-loading">正在处理,请稍等...</em>
    </div>
</div>
<div class="error-form g-hide" style="padding-left: 40px;">
    <div class="wgt-dialog-title ui-tip warn1">您的账户余额不足！</div>
     <div class="ui-form-line">
        <label class="ui-form-label money-label">应付金额：</label>
        <strong class="g-out money"></strong> 元
    </div>
   
    <div class="ui-form-line">
        <label class="ui-form-label">账 户 名：</label>
        <span class="account-name"></span>
    </div>
    <div class="ui-form-line">
        <label class="ui-form-label">账户余额：</label>
        <span class="account-balance"></span> 元
        <label style="padding-left:2px;"  class="ui-tip" >(您有<span class="account-name"></span>元可用投资礼金)</label>
    </div>
    <div class="ui-form-line ui-form-action" >
        <a class="ui-button ui-button-orange" href="recharge.htm"  target="_blank">立即充值</a>
       <img alt="" src="../s/img/icons/tip/info.png"  style="margin-top: 8px;padding-left: 15px;position: absolute;"><label style="padding-left: 34px;margin-top: 1px;"   class="ui-tip" >需充值 <span class="account-name" id='real_money'></span>元</label>
    </div>
    
</div>
<script>
    AA.doPay = function (data) {
        var _input = $("#safepass"),
            _payForm = $('.pay-confirm-form'),
            _errorForm = $('.error-form'),
            _btn = _payForm.find('.ui-button[type="submit"]'),
            _tip = _input.next('.ui-tip'),
            _lack = data.lackBalance || false;

        if (_lack) {
            _payForm.hide();
            _errorForm.show();
        } else {
            _payForm.show();
            _errorForm.hide();

            _input.focus().val('');

            AA.Helper.enabled(_btn);
            _btn.next('.ui-loading').hide();

            _btn.click(function () {
                var _val = $.trim(_input.val());
                var mobileCaptcha = $('#mobile_captcha').val();

                if($('#mobile_captcha').is(':visible') && mobileCaptcha == ''){
                    _tip.addClass('error').html('请填写手机验证码');
                	return false;
                }else if (_val == "") {
                    _tip.addClass('error').html('请填写交易密码');
                    _input.focus();
                    return false;
                } else if (_val.length < 6 || _val.length > 16) {
                    _tip.addClass('error').html('交易密码必须为6-16个字符');
                    _input.focus();
                    return false;
                } else {
                    _tip.removeClass('error').html('');
                    AA.Helper.disabled(_btn);
                    _btn.next('.ui-loading').show();
                    data.callback && data.callback(_val);
                }
                return false;
            });
        }
    }
</script>
            </form>
        </fieldset>
    </div>
</div>
<div class="clear"></div>
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="2.0/views/about/about.shtml.htm"  target="_blank">关于我们</a></h2><p><a href="2.0/views/about/team.shtml.htm"  target="_blank">团队介绍</a></p><p><a href="2.0/views/about/xr_history.shtml.htm"  target="_blank">发展历程</a></p><p><a href="2.0/views/about/xr_credit.shtml.htm" target="_blank">资质荣誉</a></p><p><a href="2.0/views/about/partner.shtml.htm"  target="_blank">合作机构</a></p></li>
<li><h2><a href="2.0/views/about/help.shtml.htm"  target="_blank">帮助中心</a></h2><p><a href="2.0/views/about/guide/guide1.shtml.htm"  target="_blank">新手指引</a></p><p><a href="2.0/views/about/help.shtml-tab=tab1.htm"  target="_blank">问题答疑</a></p><p><a href="2.0/views/about/help.shtml-tab=tab10.htm"  target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum-49-1.html'"  target="_blank">意见反馈</a></p></li>
<li><h2><a href="2.0/views/about/about.shtml.htm"  target="_blank">信息中心</a></h2><p><a href="2.0/views/about/xr_announcement.shtml.htm"  target="_blank">平台公告</a></p><p><a href="2.0/views/about/media_report.shtml.htm"  target="_blank">媒体报道</a></p><p><a href="2.0/views/about/activitysum.shtml.htm"  target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum.php'"  target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="2.0/vip.html"  target="_blank">VIP特权</a></p><p><a href="action/jf.htm"  target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><p><img src="../s/img/w02.jpg"  width="100"></p><h4>关注服务号</h4></li><li><p><img src="../s/img/w05.jpg"  width="100"></p><h4>关注订阅号</h4></li><li><p><img src="../s/img/w06.jpg"  width="100"></p><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'"  title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><p><img src="../2.0/images/qq.png"  width="120"></p><h4>QQ号：4007779888</h4></li>
</ul></li>
<li class="fb03"><a href="javascript:if(confirm('http://weibo.com/u/2719695463?profile_ftype=1&is_all=1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0'"  target="_blank" title="微博"><i class="AllIcon icon03"></i></a></li>
</ul>
</div>
</div>
<div class="footer_app right">
  <img src="../s/img/w07.jpg"  width="122" class="bimg" /><h2>下载手机客户端<i class="AllIcon icon01"></i> <i class="AllIcon icon02"></i></h2> </div>
<div class="black10"></div>
</div>
</div><!--end-->
<div class="clear"></div>
<div class="footer_pic">
<ul>
<li><a target="_blank" href="javascript:if(confirm('http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86'" title="深圳市市场监督管理局企业主体身份公示"><i class="icon01"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN'"  title="信融财富是中国第一家引入VeriSign 256位SSL加密的融资理财平台。您的隐私及个人资料安全已受最高级别的保护。"><i class="icon03"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401'"  title="中国信用企业"><i class="icon02"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://search.szfw.org/cert/l/CX20140805008628008716  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://search.szfw.org/cert/l/CX20140805008628008716'"  title="诚信网站"><i class="icon04"></i></a></li>
<li><a title="腾讯云安全认证"><i class="icon05"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business'"  title="安全联盟认证网站"><i class="icon06"></i></a></li>
</ul>
</div>
<div class="clear"></div>
<div class="footer_font main"><p> <a href="../about/privacy.htm"  target="_blank">隐私保护申明</a> 　|　 <a href="../about/agreement.htm" target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright Xinrong.com All Rights Reserved   信融财富投资管理有限公司</div>
</div>

<style>
.d-dialog{ border: 1px solid #0078b5; background:#fff;}
.d-dialog h1{ height: 30px; line-height: 30px; padding: 0 28px 0 10px; color: #fff; background: #74b4e2; background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #74b4e2), color-stop(100%, #3d8fca) ); background-image: -webkit-linear-gradient(#74b4e2, #3d8fca); background-image: -moz-linear-gradient(#74b4e2, #3d8fca); background-image: -o-linear-gradient(#74b4e2, #3d8fca); background-image: linear-gradient(#74b4e2, #3d8fca); position:relative; font-size:14px;}
.d-dialog h1 .d-close { padding: 0; position:absolute; top: 4px; right: 4px; width: 21px; height: 21px; line-height: 21px; font-size: 25px; _font-size: 20px; color: #fff; text-align: center; font-family: Helvetica, STHeiti; _font-family: Tahoma, '\u9ed1\u4f53', 'Book Antiqua', Palatino;text-decoration: none; display:block;outline: none;}

.d-dialog .call_font{ padding:50px 40px 20px 40px; line-height:24px; font-size:16px;width:350px}
.d-dialog .call_sub{ padding:20px 0 0 0; text-align:center;}
.d-dialog .call_sub .sub01{ width:156px; height:45px; line-height:43px; text-align:center; background:#15a32c; font-size:20px; display: inline-block; color: #fff;}
.d-dialog .call_sub .sub02{ width:156px; height:45px; line-height:43px; text-align:center; background:#c8c8c8; font-size:20px; display: inline-block; color: #fff;}
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
							}else if(result.state==300){
								_dialog.close();
								$.dialog({
									id:'tel_msg',
									content:$('#free_tel_msg_box').html(),
									initialize:function(){
										var _dialog = this;
										$('.d-dialog #msg_view').html('当日400免费呼入次数已超出限制，请自行联系客服4007779888');
										$('.d-dialog #free_tel_msg_btn').click(function(){
											_dialog.close();
										});
									}
								});
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
	    			$('#j-logout').show();
					
	    		}

	    	}else if(result.state == 1009){
			    		$('.h-login-reg').show();
			    	}

	    }
	});
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



<script src="../s/vendor/artDialog/jquery.artDialog-min.js-v=1591" ></script>
<script src="../s/vendor/artDialog/dialog_ex.js-v=1591" ></script>
<script src="../s/js/biz/dlg_login-min.js-v=1591" ></script>
<input type="hidden" id="login_redirect" value=""/>
<script>AA.View.TopNav.init();</script>


<script type="text/javascript" src="../2.0/js/channel.js" ></script> 

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



<script src="../s/js/www/user-min.js-v=1591" ></script>
<script src="../2.0/js/api/user_api.js-v=1591" ></script>
<script>AA.User.Deposit.init();
</script>
</body>
</html>
  </body>
</html>
