<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

   
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>信融财富 - 安全融资理财平台 - 我的账户</title>
    <script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<!--<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->    <link rel="stylesheet" href="../s/css/global.css-v=1591.css" />
<link rel="stylesheet" href="../s/css/www/user.css-v=1591.css"  />
    <script>var G_ENV_VAR = {WWW:'https://xin/',STATIC:'http://s.xinrong.com/',BBS:'http://bbs.xinrong.com/',UID:'',UNAME:'',MSG_NUM:'',VIP: '',IS_CHECKED_EMAIL: false,IS_CHECKED_MOBILE: false,HAS_TRADE_PASSWORD: false,IS_CHECKED_IDENTIFICATION: false,IS_CHECKED_BANKCARD: false}</script>
<script src="../s/js/lib/jquery.min.js-v=1591" ></script>
<script src="../s/js/AA.base-min.js-v=1591" ></script>
<script type="text/javascript" src="../2.0/js/rsa.js" ></script>
</head>
<style>
.rechargefont{ line-height:35px; padding-top:16px;}
.rechargefont dl{ width:100%;}
.rechargefont dt{ float:left;}
.rechargefont dd{ float:left; padding-left:4px;}
.rechargefont dd ul{ width:100%;}
.rechargefont dd ul li{ width:140px; height:35px; line-height:35px; border:1px solid #ccc; float:left; margin-right:20px; text-align:center;}
.rechargefont dd ul li.bor{ border:2px solid #4c8bc5; height:33px; line-height:33px;}
.rechargefont dd ul li .spanfont{ display:inline-block; width:100px; float:left;}
.rechargefont dd ul li .font01{ display:inline-block; width:40px; float:left;}
.rechargefont dd ul li .hoverbg{ background:#e1eaf2;}
.rechargefont dd ul li a{ display:block; text-decoration:none;}

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
<!--<div id="g-topnav" class="g-topnav">
    <div class="g-grid">
        <ul class="top-menu g-fix">
            
			<li><a href="javascript:AA.RapidLogin.popup();" rel="nofollow">登录</a></li>

            <li><a href="/2.0/views/account/register3.0.shtml" rel="nofollow" target="_blank">注册</a></li>
            
                        <li><a style="text-decoration:none;color: #666; padding-right:0px;">关注我们</a></li>
            <li class="menu-item">
                <a href="http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0" target="_blank" class="weibo01" title="官方微博"><img src="/s/img/weibo.png" /></a>
            </li>
            <li><a href="javascript:show_weixin();" class="weixing" title="官方微信"><img src="/s/img/w01.png" /></a></li>
            <li>|</li>
            <li class="menu-item toolbox"><a href="javascript:;" class="menu-hd" rel="nofollow">计算器<i class="arrow"></i></a>
                <ul class="menu-bd g-hide">
                    <li><a target="_blank" href="https://xin/toolbox/caculator">利息计算器</a></li>
                </ul>
            </li>
        </ul>

        <div class="top-links">
                       |<a href="javascript:show_App();"><span class="FontBg">手机端</span></a><a href="/vip" target="_blank" rel="nofollow"><span class="FontBg">VIP特权</span></a><a href="/action/jf" target="_blank" rel="nofollow" style="display:none;"><span class="FontBg">积分抽奖</span></a> <a class="Tpor" href="/gift" target="_blank" rel="nofollow"><span class="FontBg">积品汇</span><span class="FontN"><img src="/s/images/N.gif" width="9" height="11" /></span></a><a href="http://bbs.xinrong.com" target="_blank">社区</a><a href="/2.0/views/about/help.shtml" target="_blank">帮助</a><a href="/2.0/views/about/xr_monthly.shtml" target='_blank' style="display:none;">月刊</a><a href="http://bbs.xinrong.com/forum-49-1.html" target="_blank" class="last">反馈</a> <a href="https://xin/webapp2.0/" target='_blank'>触屏版</a>
        </div>
    </div>
</div>-->

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
    <div class="right top_my"><a href="../2.0/views/account/account_index.shtml.htm"  class="f-my" id="nav_my">我的账户</a> <a id="j-logout" href="../index.shtml.htm"  class="f_exit" style="display:none;">退出</a><span class="h-login-reg h-login"><i></i><a href="../2.0/login2.0.html"  class="flogin">登录</a><a href="../2.0/views/account/register4.0.shtml.htm"  class="freg">注册</a></span></div>
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
</script><div class="main" >
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
    <h3><a href="recharge.htm"  class="recharge current">充值</a></h3>
    <h3><a href="deposit.htm"  class="last deposit">提现</a></h3>
</div>            <div class="form-container recharge-form">
<p class="ui-tip-warn" id="recharge_no_loan_alert" style="display:none;">
        <span class="orange">充值提醒：</span>
        目前平台可投项目比较紧张，充值前请查看是否有可投项目，或咨询平台客服。
    </p>
    <fieldset class="ui-form">
        
            <div class="ui-form-line">
                信融财富账户余额：
                <strong class="g-out"></strong> 元
            </div>
			
            <div class="ui-form-line money" style="height:auto">
                
                <div class="rechargefont"><dl><dt>选择方式：</dt><dd><ul><li><a href="recharge.htm" >有网银大额支付</a></li><li class="hoverbg bor"><a href="rechargec.htm" >无网银快捷支付</a></li></ul></dd></dl><div style="clear:both"></div>
                <dl style="padding-top:20px;">
                <dt>充值渠道：</dt>
                <dd>
                    <select name="" id="bank_type_select">
                       <option value="quick_pc">自动选择</option><!-- 
                        <option value="lianlian_pc">自动选择</option>
                        --><!--<option value="beifu_quick">贝付</option>-->
                        <option value="lianlian_pc">连连支付</option>
                        <!--<option value="yeepay">易宝支付</option>-->
                        <option value="baofuquick">宝付支付</option>
                        <option value="guocai">天付宝</option>
                       <!--<option value="sft">盛付通</option>-->
                   </select>
                </dd>
                </dl>
                <div style="clear:both"></div></div>
                
               <br/>
			
	
				<label for="money" class="ui-form-label">充值金额：</label>
                <input type="text" name="money" id="money" class="ui-form-input" maxlength="10" autocomplete="off"  value='100' onfocus="cleanMoney();"/> 元
                <input type="text" class="fix-ie6 g-hide"/>
                <em class="ui-tip" style="margin-left:5px;"></em>
                <p class="ui-tip info">充值后未投资的资金提现将收取额外0.5%手续费。<a href="../2.0/views/about/help.shtml-tab=tab2&href=b6.htm"  target="_blank" class="blue">详情</a></p>
				</div>
				
				<br>
				<br>

				<label class="ui-form-label">认证账户：</label>
				
									<input type="hidden" id="have_card_number" value="0">
					请先进行<a class="blue" href="../2.0/views/account/account_settings.shtml.htm" >银行卡认证</a>
				
				<br/>
				<br/>
				<p id="bank_prompt_without_auth" >
				<label>提醒：银行卡未认证可通过快捷支付充值方式<span style="color:red">认证</span>成功</label><br>		
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为保障资金安全，此方式充值成功后提现银行卡将<span style="color:red">被绑定并且不可修改！</span></label>
				</p>
				<p id="bank_prompt_with_auth" style="display:none">
				<label>提醒：为保障资金安全，此方式充值成功后提现银行卡将<span style="color:red">被绑定并且不可修改！</span></label>
				</p>			
				 <input type="hidden" id="lowest_pay" value="10"/>


				
            </div>


             <div class="ui-form-line ui-form-action" style="padding-top:20px; margin-left: 109px;">
                
                <!--
                
                <span>财付通故障暂停充值</span>
                -->
				<button id='confirm_recharge' class="ui-button ui-button-orange" onclick="sub_chargec();">确定充值</button>
				
				<em class="ui-tip" style="margin-left:20px;"></em>
            </div>
       		<form action="" method="post" id="pcquickrechargeForm" target="_blank">
			</form>
       		
    </fieldset>
</div>



<script>
var isFirstRecharge = null;
$(function(){
	$.ajax({
		url : 'https://xin/v2/charge/get_bank_info.jso',     
		type : 'post',
		dataType : 'json',
		data:{bankType:'lianlian'},    
		success : function(data) {
			if(data.state == 0){
				isFirstRecharge = data.isFirstRecharge;
			}
		}
	});
});
$(function(){
	$.ajax({
		url : '../v2/login/in_session_data.jso'/*tpa=https://xin/v2/login/in_session_data.jso*/,     
		type : 'post',
		dataType : 'json',
		data:{},    
		success : function(data) {
			if(data.isAuthBankCard == 1){
				$('#bank_prompt_without_auth').hide();
				$('#bank_prompt_with_auth').show();
			}else{
				$('#bank_prompt_without_auth').show();
				$('#bank_prompt_with_auth').hide();
			}
		}
	});
});
function sub_chargec(){ 
	/*if($("#confirm_recharge").html() == '提交中...')
		return;
	$("#confirm_recharge").html('提交中...');*/
	$money=$('#money');
	var _money = $.trim($('#money').val()),
                 _lowest_pay = $("#lowest_pay").val(),
                 _banks = $('input[name^="bank_name"]:checked'),
					_warning = AA.User.warning,
                        _success = AA.User.success,
                 _tip_money = $('#money').nextAll('em'),
                 _bankName = '';

	if (!AA.Api.User.isAuth) {
		AA.RapidLogin.popup();
        $("#confirm_recharge").html('确定充值');
        return false;
    } 

	if (!G_ENV_VAR.IS_CHECKED_IDENTIFICATION) {
    	$.alert({
			title:'您尚未进行实名认证！' ,
			content:'<span class="orange">友情提示：</span>完成实名认证。' ,
			txtBtn:'立即认证' ,
			url:'/2.0/views/account/account_settings.shtml'
		});
		$("#confirm_recharge").html('确定充值');
		return false;
	} 

	if($('#have_card_number').val()==0){
		 $.alert({
			title:'未添加银行卡信息，请先填写银行卡信息！' ,
			content:'<span class="orange">友情提示：</span>完成实名认证和银行卡信息填写。' ,
			txtBtn:'立即认证' ,
			url:'/2.0/views/account/account_settings.shtml'
		});
		$("#confirm_recharge").html('确定充值');
		return false;
	}

	$money.blur(function () {
		//小数点处理
		var _val = $.trim($money.val());
		if (_val == '' || _val == '0' || isNaN(_val)) {
			_val = '';
		} else {
			_val = AA.Helper.formatDecimals(_val);
		}
		$money.val(_val);
	});

	if (_money == '') {
		$money.focus();
		$("#confirm_recharge").html('确定充值');
		return _warning(_tip_money ,'请填写充值金额');
	} else {
		_success(_tip_money);
	}

	if (!/^\d+(\.\d+)?$/.test(_money)) {
		$money.focus();
		$("#confirm_recharge").html('确定充值');
		return _warning(_tip_money ,'金额格式不正确');
	} else {
		_success(_tip_money);
	}
	
	if(isFirstRecharge == 1){
		if (parseFloat(_money) < parseFloat(2)) {
			$money.focus();
			$("#confirm_recharge").html('确定充值');
			return _warning(_tip_money ,'单笔应不低于' + 2 + '元');
		} else {
			_success(_tip_money);
		}
	}else if(G_ENV_VAR.IS_CHECKED_BANKCARD){
		if (parseFloat(_money) < parseFloat(500)) {
			$money.focus();
			$("#confirm_recharge").html('确定充值');
			return _warning(_tip_money ,'单笔应不低于' + 500 + '元');
		} else {
			_success(_tip_money);
		}
	}

	if (parseFloat(_money) > 10000000) {
		$money.focus();
		$("#confirm_recharge").html('确定充值');
		return _warning(_tip_money ,'单笔不能高于10,000,000.00元');
	} else {
		_success(_tip_money);
	}
	

	var bank_type_value=$('#bank_type_select').val();
	if(bank_type_value=="guocai"&&parseFloat(_money)<2000){
		$money.focus();
		$("#confirm_recharge").html('确定充值');
		return _warning(_tip_money ,'此渠道单笔不能低于2000元');
		}
    if(bank_type_value=="sft"&&parseFloat(_money)<2000){
        $money.focus();
        $("#confirm_recharge").html('确定充值');
        return _warning(_tip_money ,'盛付通单笔不能低于2000元');
    }
	var nowdate=new Date();
	var nowHour=nowdate.getHours();
	var nowMinutes=nowdate.getMinutes();
	if(bank_type_value=="guocai"&&(nowHour==23||(nowHour==22&&nowMinutes>50)||(nowHour==0&&nowMinutes<5))){
		$money.focus();
		$("#confirm_recharge").html('确定充值');
		return _warning(_tip_money ,'天付宝处于系统维护时间，请重新选择充值渠道');
		}
	
	//location.href='../v2/charge/do_recharge.raw-bankType=.htm'/*tpa=https://xin/v2/charge/do_recharge.raw?bankType=*/+bank_type_value+'&money='+_money;
	//window.open('/v2/charge/do_recharge.raw?bankType='+bank_type_value+'&money='+_money);
	$('#pcquickrechargeForm').attr('action','/v2/charge/do_recharge.raw?bankType='+bank_type_value+'&money='+_money);
	$('#pcquickrechargeForm').submit();
	
	$.alert({
		tipCls:'info' ,
		padding:'50px 0 0 60px' ,
		title:'请在新开的页面完成支付后再选择。<a href="' + AA.Helper.buildUrl('help/faq') + '/1#16" class="blue" target="_blank">充值遇到问题？</a>' ,
		txtBtn:'已完成充值' ,
		txtBtn1:'继续充值' ,
		url:'my/in' ,
		url1:'my/rechargec'
	});
	$('.wgt-dialog-alert .wgt-dialog-title').css({'padding-left':'25px'});
}



function cleanMoney(){
	$('#money').val('');
}


//$('#money').focus(function(){ $('#money').val('');});
</script>
        </div>
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
<script>AA.User.Recharge.init();</script>
</body>
</html>
 
