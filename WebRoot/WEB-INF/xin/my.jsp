<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
<title>信融财富</title>
<script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<!--<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]--><link rel="stylesheet" href="s/css/global.css-v=1591.css"  />
<link rel="stylesheet" href="s/css/www/user.css-v=1591.css"  />
<link rel="stylesheet" href="s/css/v2/Basic.css-v=1591.css"  />
<script>var G_ENV_VAR = {WWW:'https://xin/',STATIC:'http://s.xinrong.com/',BBS:'http://bbs.xinrong.com/',UID:'',UNAME:'',MSG_NUM:'',VIP: '',IS_CHECKED_EMAIL: false,IS_CHECKED_MOBILE: false,HAS_TRADE_PASSWORD: false,IS_CHECKED_IDENTIFICATION: false,IS_CHECKED_BANKCARD: false}</script>
<script src="s/js/lib/jquery.min.js-v=1591" ></script>
<script src="s/js/AA.base-min.js-v=1591" ></script>
<script type="text/javascript" src="2.0/js/rsa.js" ></script>

<link href="2.0/css/basic.css"  rel="stylesheet" type="text/css" />
<link href="s/css/v2/my/Account.css-v=1111.css"  rel="stylesheet" type="text/css" />
<link href="s/css/v2/my/tip.css"  rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="s/js/v2/my/jquery.mCustomScrollbar.js" ></script>
<script language="javascript" src="s/js/v2/my/jquery-1.10.2.min.js" ></script>
<script language="javascript" src="s/js/v2/xcb/xcb-index.js" ></script>  
<script src="s/js/AA.base-min.js" ></script> 
<script src="s/vendor/datepicker/WdatePicker.js-v=1591" ></script>
<script src="s/js/widget/datagrid-min.js-v=1591" ></script>
<script src="s/js/v2/user/near_refund_list.js-v=1591" ></script>
<script src="s/js/widget/pagination-min.js-v=1591" ></script>
<script src="s/js/v2/user/refund_plan.js-v=1591" ></script>
<script src="s/js/www/user-min.js-v=1591" ></script>
<style>
.unionlogin .loginfont {
	padding-top: 10px;
	color: #fff;
	text-align: right;
}

.unionlogin .loginfont input {
	vertical-align: middle;
	margin-top: -1px;
}

.unionlogin .loginfont a {
	color: #fff;
}


.left{ float:left; display:inline}
.right{ float:right; display:inline}

.aftitle h3{ padding: 6px 0 4px 10px; border-bottom: 1px solid #ccc; margin-bottom: 0px; font-weight: 700; font-size: 14px;}
.aftitle h3 .left{ float:left; display:inline-block;}
.aftitle h3 .right{ font-size:12px; font-weight:normal; display:inline-block; padding-right:2px;}
.aftitle .titledate{ background-color: #d9d9d9; height:25px; padding:6px 18px;}
.aftitle .titledate .titlefont{ display:inline-block; line-height:24px;}
.aftitle .titledate .titlefont a{color: #0078b6; margin:0 8px;}
.aftitle .titledate .titlefont a.selected{
	
	background: #75b3da; color:#fff; padding:7px 3px; font-weight:bold;

}
.sl{
	background: #75b3da; color:#fff; padding:7px 3px; font-weight:bold;
}


.toolfoot .tooltip .tipcuenru dl.w01 dd .font01 {
display: inline;
position:absolute;
margin-left: -15px;
font-size: 12px;
width: 30px;
}


.AccountBoxbr .AccountIndex .indextop .topjifen{ top:6px; color:#444;}
.AccountBoxbr .AccountIndex .indextop .topjifen p{ text-align:right; padding-right:10px; font-size:12px;}
.AccountBoxbr .AccountIndex .indextop .topjifen .red{ font-size:12px;}

.top-tips{ height:44px;}
.top-tips .ui-tip-warn{ margin:0px 0 0px 0; padding: 5px 10px;}
.top-tips .ui-tip-warn img{ vertical-align: middle;margin-right:5px; margin-bottom: 4px;}
.top-tips{ -webkit-animation:top-tips .6s .3s ease both;
-moz-animation:top-tips .6s .3s ease both;
-ms-animation:top-tips .6s .3s ease both;
-o-animation:top-tips .6s .3s ease both;
animation:top-tips .6s .3s ease both;}
@-webkit-keyframes top-tips{0%{opacity:0; height:0px;}100%{opacity:1; height:44px;}}
@-moz-keyframes top-tips{0%{opacity:0; height:0px;}100%{opacity:1; height:44px;}}
@-ms-keyframes top-tips{0%{opacity:0; height:0px;}100%{opacity:1; height:44px;}}
@-o-keyframes top-tips{0%{opacity:0; height:0px;}100%{opacity:1; height:44px;}}
@keyframes top-tips{0%{opacity:0; height:0px;}100%{opacity:1; height:44px;}}

</style>


<script type="text/javascript"> 
$(function(){
	location.href = '2.0/views/account/account_index.shtml.htm'/*tpa=https://xin/2.0/views/account/account_index.shtml*/;
	if (!AA.Api.User.isAuth) {
        AA.RapidLogin.popup();
        return false;
    }else{
	    $("#tool01").bind("click",function(){
	        var $content = $(this).next();
	        $("#crMoneyError").html(""); 
	        $("#crPassError").html("");      
	        //$("#crMoney").val("");
	        $("#crPass").val(""); 
	        if($content.is(":visible")){
	            $content.hide();
	        }else{
	            $content.show();
	            $("#tool02").next().hide();
	            $("#tool03").next().hide();
	            $("#tool04").next().hide(); 
	            $("#tool05").next().hide();
	        }
	    })
		$("#tool02").bind("click",function(){
	        var $content = $(this).next();
	        $("#zcMoneyError").html(""); 
	        $("#zcPassError").html("");      
	        $("#zcMoney").val("");
	        $("#zcPass").val("");  
	        if($content.is(":visible")){
	            $content.hide();
	        }else{
	            $content.show();
	            $("#tool01").next().hide();
	            $("#tool03").next().hide();
	            $("#tool04").next().hide(); 
	            $("#tool05").next().hide();
	        }
	    })
		$("#tool03").bind("click",function(){
	        var $content = $(this).next();
	        if($content.is(":visible")){
	            $content.hide();
	        }else{
	        	$("#more1").attr("style","display:block");  
	            $content.show();
	            $("#tool01").next().hide();
	            $("#tool02").next().hide();
	            $("#tool04").next().hide(); 
	            $("#tool05").next().hide();
	        }
	    })
		$("#tool04").bind("click",function(){
	        var $content = $(this).next();
	        if($content.is(":visible")){
	            $content.hide();
	        }else{
	            $content.show();
	            $("#more2").attr("style","display:block");  
	            $("#tool01").next().hide();
	            $("#tool02").next().hide();
	            $("#tool03").next().hide(); 
	            $("#tool05").next().hide();
	        }
	    })
	    $("#tool05").bind("click",function(){
	        var $content = $(this).next();
	        if($content.is(":visible")){
	            $content.hide();
	        }else{
	            $content.show();
	            $("#tool01").next().hide();
	            $("#tool02").next().hide();
	            $("#tool03").next().hide(); 
	            $("#tool04").next().hide();
	        }
	    });
	
	    initData();  //初始化数据

	    if (!G_ENV_VAR.IS_CHECKED_MOBILE) {
			 var _authinfo = AA.User.Setting.AuthInfo;
		   	 AA.User.Setting.AuthInfo.authMobile();
			 return false;
		}
		
		if (!G_ENV_VAR.IS_CHECKED_IDENTIFICATION) {
		   	 //var _authinfo = AA.User.Setting.AuthInfo;
		   	 //AA.User.Setting.AuthInfo.authIDentity();
			BankQuickAuthWin.show();
		   	return false;
		}

		$.ajax({
			type:'post',
			url:'https://xin/v2/onlineloan/get_user_refund_and_overdue_info.jso',
			dataType:'json',
			success:function(result){
				if(result.state == 0){
					if(result.overdueCount > 0){
						$('#overdue_tip_warn').show();
					}else{
						$('#overdue_tip_warn').hide();
					}
				}
			}
		});
    }
});
</script>
</head>
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
               <div class="BoxClose"><a href="javascript:close_weixin();"><img src="s/img/close.jpg"/*tpa=https://xin/s/img/close.jpg*/ /></a></div>\
               <div class="boxpic"><img src="s/img/w02.jpg"/*tpa=https://xin/s/img/w02.jpg*/ /><div class="boxfont"><span style="color:#0078b6;">服务号：</span>扫描或在微信添加公众号<br/>搜索<span>信融财富</span>关注</div>\</div>\
               <div class="boxpic"><img src="s/img/w05.jpg"/*tpa=https://xin/s/img/w05.jpg*/ width="232" /><div class="boxfont"><span style="color:#0078b6;">订阅号：</span>扫描或在微信添加公众号搜<br/>索<span>信融财富投融资平台</span>关注</div>\</div>\
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
               <div class="boxbg"><h2><img src="s/img/App.jpg"/*tpa=https://xin/s/img/App.jpg*/ /><span>iPhone</span>版客户端</h2>\
               <div class="BoxClose" style="display: none"><a href="javascript:close_App();"><img src="s/img/close.jpg"/*tpa=https://xin/s/img/close.jpg*/ /></a></div>\
               <div class="boxpic"><img src="s/img/w03.jpg"/*tpa=https://xin/s/img/w03.jpg*/ /></div>\
               <div class="boxfont boxApp">扫描或在AppStore搜索"<span>信融财富</span>"下载</div>\
               </div>\
			   <div class="boxbg"><h2><img src="s/img/android.jpg"/*tpa=https://xin/s/img/android.jpg*/ /><span>Android</span>版客户端</h2>\
               <div class="BoxClose"><a href="javascript:close_App();"><img src="s/img/close.jpg"/*tpa=https://xin/s/img/close.jpg*/ /></a></div>\
               <div class="boxpic"><img src="s/img/w04.jpg"/*tpa=https://xin/s/img/w04.jpg*/ /></div>\
               <div class="boxfont boxApp" style="text-align: left;padding-left: 35px;">扫描或<a href="s/apk/Xinrong_V2.06_16.4.5.apk"/*tpa=https://xin/s/apk/Xinrong_V2.06_16.4.5.apk*/ style="color: #0078b6;text-decoration: underline;">本地下载</a>。<br/>在豌豆荚等应用市场搜索“<span>信融财富</span>”下载。</div>\
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
.hmenu_nav ul li a .iconhot{ width:26px; height:16px; display:inline-block; background:url("2.0/images/hot.png"/*tpa=https://xin/2.0/images/hot.png*//*tpa=https://xin/2.0/images/hot.png*/) no-repeat; position:absolute; right:10px; top:5px;}
.hmenu_nav ul li a .hh_icon{ width:34px; height:21px; display:inline-block; position:absolute; right:3px; top:-2px;}
.hmenu_nav ul li a .arrow{ width:13px; height:8px; display:inline-block; vertical-align:middle; background:url("2.0/images/t-n.png"/*tpa=https://xin/2.0/images/t-n.png*//*tpa=https://xin/2.0/images/t-n.png*/) no-repeat; margin-left:5px;}
.hmenu_nav ul li:hover a{ color:#f60; text-decoration:none;}
.hmenu_nav ul li:hover a .arrow{ background:url("2.0/images/t-n.png"/*tpa=https://xin/2.0/images/t-n.png*//*tpa=https://xin/2.0/images/t-n.png*/) no-repeat; transform:rotate(180deg); -ms-transform:rotate(180deg); -moz-transform:rotate(180deg); -webkit-transform:rotate(180deg); -o-transform:rotate(180deg);}
.hmenu_nav ul li.cur a{ color:#fff; background:#f60;}
.hmenu_nav ul li.cur a .arrow{ background:url("2.0/images/t-n01.png"/*tpa=https://xin/2.0/images/t-n01.png*//*tpa=https://xin/2.0/images/t-n01.png*/) no-repeat; transform:rotate(180deg); -ms-transform:rotate(180deg); -moz-transform:rotate(180deg); -webkit-transform:rotate(180deg); -o-transform:rotate(180deg);}
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

<!--<div class="g-header" >
    <div class="g-grid">
        <div class="happynewyear"></div>
        <a class="g-logo" href="http://xin/" hidefocus="true" style=" position: relative;"><img src="/2.0/images/logo.gif" title="信融财富 - 安全融资理财平台"></a>
                <!--<ul class="g-nav">
            <li><a href="/" class="channel g-home" hidefocus="true">首页</a></li>
            <li><a href="/invest.shtml" class="channel g-invest" hidefocus="true">投资理财</a></li>
            <li><a href="https://xin/about/introduction" class="channel g-service" hidefocus="true">服务介绍</a></li>
            <li><a href="https://xin/about/security" class="channel g-security" hidefocus="true">安全保障</a></li>
            <li><a href="https://xin/about/index" class="channel g-about" hidefocus="true">关于信融财富</a></li>
            <li><a href="javascript:AA.RapidLogin.popup('https://xin/my');" class="channel g-my" hidefocus="true">我的账户</a></li>
        </ul>-->
        <!--    </div>
</div>-->

<div class="hmenu_nav">
  <div class="main PositionR">
    <div class="logo left PositionR"><a href="index.shtml.htm" ><img src="2.0/images/logo.gif"  /></a><a href="2.0/views/about/shareholder.shtml.htm"  class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="2.0/views/account/account_index.shtml.htm"  class="f-my" id="nav_my">我的账户</a> <a id="j-logout" href="index.shtml.htm"  class="f_exit" style="display:none;">退出</a><span class="h-login-reg h-login"><i></i><a href="2.0/login2.0.html"  class="flogin">登录</a><a href="2.0/views/account/register4.0.shtml.htm" class="freg">注册</a></span></div>
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
        <li><a href="2.0/action/xr_huahua/huahua.shtml.htm"  id="nav_huahua">信融花花<i class="arrow"></i><b class="hh_icon"><img src="2.0/images/hh_icon.png"  /></b></a>
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
</script>
<body class="channel-my">

<div class="main">
<div class="AccountLeft left">
<ul class="AccountNav">
	<li><a href="2.0/views/account/account_index.shtml.htm"  class="cur"><i class="AllIcon Icon01"></i>账户首页</a></li>
	<li><a href="my/invest.htm" ><i class="AllIcon Icon02"></i>投资管理</a></li>
	<li><a href="2.0/borrowing.html" ><i class="AllIcon Icon11"></i>借款管理</a></li>
	<li><a href="my/recharge.htm" ><i class="AllIcon Icon03"></i>充值提现</a></li>
	<li><a href="my/consume.htm" ><i class="AllIcon Icon04"></i>收支查询</a></li>
	<li><a href="2.0/views/account/account_setting.shtml.htm" ><i class="AllIcon Icon06"></i>账户设置</a></li>
	<li><a href="my/msg.htm" ><i class="AllIcon Icon07"></i>我的消息</a></li>
	<li><a href="2.0/recommend.html" ><i class="AllIcon Icon12"></i>我的推荐</a></li>
	<li class="liFoot"><a href="2.0/my_service.html" ><i class="AllIcon Icon13"></i>增值服务<b class="AllIcon iconhot"></b></a></li>
</ul>
</div>
<!--left end-->
<div class="AccountRight right">
<div class="top-tips" id="overdue_tip_warn" style=" display:none;">
<p class="ui-tip-warn">
<img src="2.0/images/warning.png"  width="20"><span class="red">您的账户有逾期待还记录，请及时充值还款。</span><a href="2.0/borrowing.html"  class="blue" style="margin-left: 10px;">查看详情></a>
</p>
</div>
<div class="AccountBoxbr"> 
<h1><span class="left BoxbrTitle" ><span id='leftTitle'></span><a href="#"><i class="wmail AllIcon" title="邮箱" id='isCheckedEmail'></i></a><a href="#"><i class="wtel AllIcon" title="手机" id='isCheckedMobile'></i></a><a href="#"><i class="wID AllIcon" title="身份证" id='isCheckedIdentification'></i></a><a href="#"><i class="wbank AllIcon" title="银行卡" id='isCheckedBankCard'></i></a></span><span class="right BoxBrTitlefont" style="display:none;" id='unVip'><i class="AllIcon Icon01"></i><a href="vip.htm"  target="blank">成为VIP会员，享受本金收益保障！ </a></span><span class="right BoxBrTitlefont01" id='vip'><p class="red"><i class="AllIcon icon01"></i>您是尊贵的VIP<span id='vipGrade'></span>会员！</p>有效期至：<span id='vipDeadLine'></span> <a href="vip.htm"  class="blue">详情</a></span></h1>
  <div class="clear"></div>

<div class="clear"></div>
<div class="AccountIndex">
<div class="indextop">
<dl>
	<dt class="font01">账户余额：</dt>
	<dd class="font01"><span class="AFont"><b class="red" id='money_'>0.00</b>元 </span><span
		class="font02"><a class="blue" href="invest.shtml.htm" >投资</a> | <a class="blue"
		href="my/recharge.htm" >充值</a> | <a class="blue" href="my/deposit.htm" >提现</a> | <a class="blue" href="2.0/xincunbao.shtml.htm"  style="position:relative">信存宝</a></span></dd>
	<div class="clear"></div>
</dl>
<dl>
	<dt>投资礼金：</dt>
	<dd ><span id='rewardMoney'>0.00</span>元<span id='deadline'></span> <a href="action/reg_invite.htm"  target="_blank" class="blue" style=" margin-left:8px;">推荐赢礼金</a></dd> 
</dl>

<dl style="padding-top:10px;">
<dt>积分值：</dt>
<dd><span id='score' class="red">0</span> 分 <a href="javascript:if(confirm('http://bbs.xinrong.com/thread-3866-1-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/thread-3866-1-1.html'" target="_blank" class="blue">赚取积分</a> <a href="action/jf.htm" class="blue" style=" margin-left:8px;">立即抽奖>></a></dd>
</dl>
<div class="black5"></div>

<div style="display:none" id="zhimaScore" class="topjifen"></div> 

</div>
<div class="Accountbor"></div>
<div class="xincuenbao" style="position: relative;">
<div class="baofont"><span class="font01 left">信存宝：<i class="AllIcon icon01" style="display:none;"></i><b class="red" id='xcbMoney'>0.00</b>元</span> <span
	class="toolfoot left">
<ul>
	<li>
	<div id="tool01"><a href="#" class="blue">账户余额存入</a> |</div>
	<div class="tooltip cuenrumain">
	<div class="tippic"><img src="s/images/my/acc.jpg"  width="20"
		height="12" /></div>
	<div class="tipclose"><img src="s/images/my/close.png"  width="11"
		height="11" onclick="close_yuecunru();" /></div>
	<div class="tipcuenru">
	<dl class="w01">
		<dt>金额：</dt>
		<dd><input name="" type="text" placeholder="例如：1000" class="text01" id='crMoney'/><span
			class="font01">元</span>
		<p class="red" id='crMoneyError'></p>
		</dd>
	</dl>
	<dl class="w02">
		<dt>交易密码：</dt>
		<dd><input name="" type="password" placeholder="" class="text01" id='crPass'/> 
		<a href="2.0/views/account/back_password.shtml-tab=2.htm"  >忘记密码？</a>
		<p class="red" id='crPassError'>&nbsp;</p>  
		</dd>
	</dl>
	<div class="clear"></div>
	<span class="fontxy"><input name="" type="checkbox" id='readme'/> 我已阅读并接受<a   
		href="about/xcb_xieyi.htm"  target="_blank" class="blue">《信存宝用户服务协议》</a></span> <span class="fontxy"
		style="display: none;"><i class="icon01 AllIcon"></i>份额已满，敬请期待下一轮发布</span>
	</div>
	<div class="tipcuenrusub"><a href="#" class="sub02" id='crSub'>提交</a>
	<p style="display: none;" id='crjuhua'><img src="s/images/my/load.gif"  width="28" height="28" /></p>
	<p style="display: none;" id='crFailP'><i class="Icon01 AllIcon"></i><span id='crFail' style='color:red'>存入失败</span></p>     
	</div>
	<div class="clear"></div>
	</div>
	</li>
	<li>
	<div id="tool02"><a href="#" class="blue">转出</a> |</div>
	<div class="tooltip zhuanchumain">
	<div class="tippic"><img src="s/images/my/acc.jpg"  width="20"
		height="12" /></div>
	<div class="tipclose"><img src="s/images/my/close.png"  width="11"
		height="11" onclick="close_zhuanchu();" /></div>
	<div class="tipcuenru">
	<dl class="w01">
		<dt>金额：</dt>
		<dd><input name="" type="text" placeholder="例如：1000" class="text01" id="zcMoney"/><span
			class="font01">元</span>
		<p class="red" id='zcMoneyError'>&nbsp;</p>
		</dd>
	</dl>
	<dl class="w02">
		<dt>交易密码：</dt>
		<dd><input name="" type="password" placeholder="" class="text01"  id="zcPass"/>
		<a href="2.0/views/account/back_password.shtml-tab=2.htm"  >忘记密码？</a>
		<p class="red" id='zcPassError'>&nbsp;</p>  
		</dd>
	</dl>
	<div class="clear"></div>
	<span class="fontxy" ><input name=""
		type="checkbox" value=""  id='readme2'/> 我已阅读并接受<a href="about/xcb_xieyi.htm"  target="_blank" class="blue">《信存宝服务用户协议》</a></span>
	<span class="fontxy" style="display: none;"><i class="icon01 AllIcon"></i>份额已满，敬请期待下一轮发布</span>
	</div>
	<div class="tipcuenrusub"><a href="#" class="sub02" id='zcSub'>提交</a>
	<p style="display: none;" id='zcjuhua'><img src="s/images/my/load.gif"  width="28"
		height="28" /></p>
	<p style="display: none;" id='zcFailP' ><i class="Icon01 AllIcon"></i><span id='zcFail' style='color:red'>存入失败</span></p>        
	</div>
	<div class="clear"></div>
	</div>
	</li>
	<li style="display:none;">
	<div id="tool03"><a href="#" class="blue">收益</a> |</div>
	<div class="tooltip shouyimian">

	<div class="tippic"><img src="s/images/my/acc.jpg"  width="20"
		height="12" /></div>
	<div class="tipclose"><img src="s/images/my/close.png" width="11"
		height="11" onclick="close_shouyi();"/></div>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<thead>
			<tr>
				<th width="92">日期</th>
				<th>收益</th>
			</tr>
		</thead>
	</table>
	<div class="content mCustomScrollbar">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" >
		<tbody id='shouyiTB'>
			
		</tbody>  
	</table>
	</div>
	<span class="morefont"><a href="#" class="blue" id='more1'>展开更多>></a></span></div>
	</li>
	<li style="display:none;">
	<div id="tool04"><a href="#" class="blue">交易记录</a>|</div>
	<div class="tooltip shouyimian jilumain">
	<div class="tippic"><img src="s/images/my/acc.jpg"  width="20"
		height="12" /></div>
	<div class="tipclose"><img src="s/images/my/close.png"  width="11"
		height="11" onclick="close_tradelist();" /></div>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<thead>
			<tr>
				<th width="100">类型</th>
				<th width="191">金额</th>
				<th>时间</th>
			</tr>
		</thead>
	</table>
	<div class="content mCustomScrollbar">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody id="jiaoyijiluTB"> 
			
		</tbody>
	</table>
	</div>
	<span class="morefont"><a href="#" class="blue" id='more2'>展开更多>></a></span></div> 
	</li>
	<li><div><a href="2.0/xincunbao.shtml.htm"  class="blue">了解更多</a></div><div class="tooltip xcbmore" style="display:none;">
  <div class="tippic"><img src="s/images/my/acc.jpg"  width="20" height="12" /></div>
  <div class="tipclose"><img src="s/images/my/close.png"  width="11" height="11" onclick="close_knowmore();" /></div>
  <div class="morefont">
  <h4>确认进度与转化进度查询<span class="gray">（当天存入，次日确认，第三日起息）</span></h4>
  <ul>
  <li class="w01 PositionR">未确认：<span id="unconfirm_money">200.00</span>元 <p class="gray">（转出优先）</p><span class="pic"><img src="s/images/my/morepic.jpg"  /></span></li>
  <li>已确认：<span id="confirm_money" class="red">80.00</span>元（转化进度：<span id="conversion_progress" class="red">56%</span>）<p class="gray">（每日转化）</p></li>
  </ul>
  <span class="fontgray">为规避涉嫌洗钱，套现等行为，新充值、未投资信存宝以外项目的资金需进行转化。转化过程中，转出并提现将收取额外提现费，按转化进度减免，100%后将全免；转化一般需15日左右。</span>
  </div>
  <div class="clear"></div>
  </div></li>
</ul>
</span><span class="font03 left"><a href="action/xcb_zt.htm"  class="blue" target="_blank" style="display: none;">什么是信存宝？</a></span></div>
<div class="clear"></div>
<div class="baofont01">今日收益：<span class="red"  id='todayIncome' >0.00</span>元</div>
<div class="baofont02">今日预期年化收益率：<b id='rate' >0.00</b>% <span>万份收益：<b id='tenThousandIncome'>0.00</b>元</span>
<span>剩余额度：<b id='syed'>0.00</b>元</span>
</div>

</div>
<div class="black10"></div>
<h2><span class="left">账户资产概览</span><a href="my/invest.htm"  class="blue right">详情</a></h2> 
<div class="clear"></div>
<div class="black10"></div>
<div class="Accountgl">
<dl>
	<dt>资产总额：</dt>
	<dd><b class="red" id="all"></b> 元</dd>
</dl>
<div class="black5"></div>
<div class="AccouBr"></div>
<ul>
	<li>可用余额：<font style="font-weight: bold;" id="t_money"></font> 元</li>
	<li>信存宝：<font style="font-weight: bold;" id="xcb_money"></font> 元</li>
	<li>礼金余额：<font style="font-weight: bold;" id="all_reward"></font> 元</li>
	<li>收益中：<font style="font-weight: bold;" id="earn"></font> 元</li>
	<li>提现中：<font style="font-weight: bold;" id="withdraw"></font> 元</li>
	<li>逾期中：<font style="font-weight: bold;" id="overdue"></font> 元</li>
</ul>
<div class="black10"></div>
</div>
<h3>投资收益统计</h3>
<div class="Accountgl">
<ul>
	<li>累计充值：<font id="earn_recharge_recharge"></font> 元（<font id="earn_recharge_ct"></font>笔）</li>
	<li class="w01">累计提现：<font id="earn_withdraw_withdraw"></font>元（<font id="earn_withdraw_ct"></font>笔， 手续费：<font id="earn_withdraw_fee"></font>元）</li>
	<li class="w02">累计投资：<font  style="font-weight: bold;" id="earn_invest_invest"></font> 元（<font id="earn_invest_ct"></font>笔， 笔均：<font id="earn_invest_ag"></font> 元）</li>
	<div class="clear"></div>
</ul>
<div class="black10"></div>
<div class="fontbg">累计收益：<font color="red"  style="font-weight: bold;" id="earn_all"></font> 元（ 已实收收益：<font id="earn_back"></font>
元，待收收益：<font id="earn_earn"></font> 元，信存宝收益：<font id="xcb_total_income"></font> 元，已抵扣礼金：<font id="reward_use"></font> 元）</div>
</div>
<div class="clear"></div>
</div>
<div class="black15"></div>
</div>
<div class="black15"></div>

<div class="g-mod recent-invests">
    
    
 <div class="aftitle">
<h3><span class="left">最近回款 / 待回款查询</span>
<span class="right">下次回款日:<font id="nextRefundDay">--</font>
<span style="padding-left: 15px;">下次回款总额:<font id="nextRefundSum"></font>元</span></span>
<div class="clear"></div></h3>
<div class="titledate">
<span class="left">
开始日期：<input name="" type="text" id="s-time" class="Wdate" onfocus="WdatePicker()" /> 
结束日期：<input name="" type="text" id="e-time" class="Wdate" onfocus="WdatePicker()" /> <input style="width:50px;height:23px;" name="" type="button" value="查询" onclick="javascript:change_near_refund_type(5);" /></span>
<span class="right titlefont" ><a id='a-type-1' class="selected" href="javascript:change_near_refund_type(1);">下次回款日</a> <a id='a-type-2' href="javascript:change_near_refund_type(2);">最近一周</a> <a id='a-type-3' href="javascript:change_near_refund_type(3);">1个月</a> <a id='a-type-4' href="javascript:change_near_refund_type(4);">3个月</a></span></div>

<input type="hidden" id="stime" name="stime" value="0"/>
<input type="hidden" id="etime" name="etime" value="0"/>
<input type="hidden" id="type" name="type" value="1"/>
</div>
    
<table class="wgt-datagrid">
    <thead class="wgt-datagrid-header"></thead>
    <tbody class="wgt-datagrid-container"></tbody>
</table>
  
<div class="wgt-pagination"></div> 
<div id="show_stat"></div>
<div style="background:#fef3d7; height:40px; line-height:40px; text-align:center; margin-top:29px;">查询不到？可能项目已全部/结束回款，请进“<a href="my/consume.htm"  class="blue">收支查询</a>”，它也可以为您指定日期查询</div>
</div>

<!--right end-->
<div class="clear"></div>
</div>
<!--center end-->
<style>
.DocBox{ margin:0 15px;}
.DocBox h2{ height:40px; line-height:40px; border-bottom:1px solid #dcdcdc; font-weight:bold; font-size:14px;}
.DocBox h2 span{ display:inline-block; padding-left:15px; /*color:#999;*/ font-weight:normal; font-size:12px;}
.DocBox ul{ border-bottom:1px solid #dcdcdc; margin:0 10px; padding:10px 0;}
.DocBox ul li{ width:48%; float:left; line-height:28px;}
.DocBox .Dotable{ line-height:28px; margin:10px;}
.DocBox .Dotable table tbody tr:hover{ background:#F5F5F5;}
.DocBox .Dotable table td,.DocBox .Dotable table th{ padding:0 10px; text-align:left;}
.DocBox .Coflip{ text-align:right; line-height:35px;}
.DocBox .Coflip a{ padding:0 4px;}
</style>


<div id="refund_plan_dlg" class="g-hide">
<div class="DocBox">
<h2><font id="loan_type"></font>-<font id="rd_sn"></font>回款计划<span>回款方式：<font id="refund_type"></font></span>
  <span>预期年化：<font id="refund_rate"></font>%</span><span>融资期限：<font id="deadline"></font></span>
</h2>
<ul>
<li>本金总额：<span class="red" id="rd_total_money"></span> 元</li>
<li>到期收益总额：<span class="red" id="rd_total_interest"></span> 元</li>
<li>到期服务费总额：<span class="red" id="rd_total_manage"></span> 元</li>
<li>到期实收收益总额：<span class="red" id="rd_total_real_interest"></span> 元</li>
<li>已回款：<span class="red" id="rd_refund_money"></span> 元（<font id="rd_back_num"></font>期）</li>
<li>待回款：<span class="red" id="rd_plan_money"></span> 元（<font id="rd_plan_num"></font>期）</li>
<div class="clear"></div>
</ul>
<div class="Dotable">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<thead>
  <tr>
    <th>期数</th>
    <th>时间</th>
    <th>本金</th>
    <th>收益</th>
    <th>本金+收益</th>
    <th>服务费</th>
    <th>回款金额</th>
  </tr>
  </thead>
  <tbody id="rd_tbody">
 
  </tbody>
</table>
<div class="Coflip"><a href="javascript:Xinrong_RefundPlan.prePage();" id="rd_pre">上一页</a> <a href="javascript:Xinrong_RefundPlan.nextPage();" href="#" id="rd_next">下一页</a></div>
</div>

</div>

</div><div id="wgt-dialog-auth-mobile-wrapper" class="g-hide">
    <div class="wgt-dialog wgt-dialog-auth-mobile" style="height:auto;">
        <fieldset class="ui-form" style="width:auto;margin-left:35px;">
            <form id="mobile-form" method="post" target="_blank">
                                <div class="mobile-send-code" style="padding-left: 0;">
                    <div class="wgt-dialog-title ui-tip info" style="margin-left:40px;">请填写您的手机号码，点击按钮发送手机验证码。</div>
                    <div class="ui-form-line" style="margin:20px 0;">
                        <label for="mobileNo" class="ui-form-label">手机号码：</label>
                        <input style="width: 185px" type="text" class="ui-form-input" id="mobileNo" name="mobile" maxlength="11"/>
                       
                    </div>
                    <div class="ui-form-line" style="margin:20px 0;">
                       	<label class="ui-form-label" style="float: left;padding-right: 4px;">验证码：</label>
    	 				<input  type="text" id="rapid-captcha" name="captcha" class="ui-form-input"  style="float: left;width: 90px;" autocomplete="off" maxlength="4" tabindex="3" placeholder="请输入验证码"/>
    					<span id="rapid-captcha-placeholder" class="captcha-placeholder captcha-placeholder1" style="float: left;padding-left: 5px;" ></span>
         				<input type="hidden" id="rapid-seed" name="seed" value=""/>
                         <em class="ui-tip" id="error_tip"></em>
                    </div>
                    <div class="ui-form-line ui-form-action">
                   		
                        <input  type="submit" class="ui-button ui-button-orange" style="margin-left:64px;" value="发送验证码" />
                        <input type="button" class="ui-button ui-button-orange" style="width:120px;" value="发送语音验证码" />
                        <em class="ui-loading g-hide">正在发送验证短信，请稍等...</em>
                        <input type="hidden" name="sendType" id="sendType" value="0">
                    </div>
                    <p style="text-align: center;padding-top:10px;"><span class="ui-tip" style="padding-left: 0">活动期间完成认证，您将可获赠<strong class="hl">3</strong>元投资礼金。</span></p>
                </div>
                                <div class="mobile-validate-code g-hide">
                    <div class="wgt-dialog-title ui-tip info">已向您填写的手机发送一条验证短信，请查收并填写验证码。</div>
                    <div class="ui-form-line" style="margin-top:30px;padding-left:55px;">
                        <label for="mobileNo" class="ui-form-label">手机号码：</label>
                        <span class="mobileno"></span>
                    </div>
                    <div class="ui-form-line" style="padding-left:55px;">
                        <label for="code" class="ui-form-label">验证码：</label>
                        <input class="ui-form-input" type="text" name="code" id="code" style="width: 80px;" maxlength="6"/>
                        <em class="ui-tip"></em>
                    </div>
                    <div class="ui-form-line ui-form-action">
                        <a id="btn-code-submit" class="ui-button ui-button-orange" href="javascript:;" style="margin-left:70px;">确 定</a>
                        <input type="button" style="width: 100px;height: 30px;line-height: 30px;vertical-align: top;margin-left:10px;" id="btn-code-again" class="ui-button ui-button-white" style="margin-left:10px;" value="重发(60)" />
                    </div>
                </div>
                <div class="mobile-finish g-hide" style="padding-bottom:20px;">
                                        <div class="wgt-dialog-title ui-tip success1" style="font-size:12px;">恭喜您完成手机号认证！</div>
                    <span style="padding-left:40px;" class="disabled">为了进一步提升您的账户安全和提现便利，建议您现在进行实名认证。</span>
                    <div class="ui-form-line ui-form-action">
                        <a class="ui-button ui-button-orange" href="my/authinfo-_=1505637956.htm#identity"  style="margin-left:64px;">实名认证</a>
                    </div>
                                    </div>
            </form>
        </fieldset>
    </div>
</div><div id="wgt-dialog-auth-identity-wrapper" class="g-hide">
    <div class="wgt-dialog wgt-dialog-auth-identity" style="height:auto;">
        <fieldset class="ui-form" style="width:auto;margin-left:50px;">
            <form id="identity-form">
                <div class="identity-form-fill">
                    <div class="wgt-dialog-title ui-tip info">请填写您的真实姓名和身份证号进行实名认证。</div>
                    <div class="ui-form-line" style="margin-top:30px;">
                        <label for="realname" class="ui-form-label">真实姓名：</label>
                        <input type="text" class="ui-form-input" id="realname" name="real_name" style="width:100px;" maxlength="12" value=""/>
                        <em class="ui-tip"></em>
                    </div>
                    <div class="ui-form-line">
                        <label for="number" class="ui-form-label">身份证号：</label>
                        <input type="text" class="ui-form-input" style="width:200px" id="number" name="number" maxlength="18" value=""/>
                        <em class="ui-tip"></em>
                    </div>
                    <p class="ui-tip info" style="margin: 30px 0 10px 0;">友情提示：请务必填写真实信息，账户资金将<span class="hl">只能提现至对应的银行账号。</span></p>
                    <p style="text-indent:1.6em;color: #666">此外，该身份信息也将作为<span class="orange">电子合同主体。</span></p>
                    <div class="ui-form-line ui-form-action">
                        <input type="submit" class="ui-button ui-button-orange" style="margin-left:65px;" value="提 交" />
                        <em class="ui-loading g-hide">实名认证中，请稍等...</em>
                        <em class="ui-tip"></em>
                    </div>
                    <p style="padding-top:10px"><span class="ui-tip">活动期间完成认证，您将可获赠<strong class="hl">3</strong>元投资礼金。</span></p>
                </div>
                <div class="identity-error g-hide">
                    <div class="wgt-dialog-title ui-tip error1" style="font-size:12px;">实名认证失败，真实姓名与身份证号不匹配。</div>
                    <span style="padding-left:40px;" class="disabled identity-error-tip"></span>
                    <div class="ui-form-line ui-form-action" style="padding:0 0 20px 140px;">
                        <a class="ui-button ui-button-orange" href="javascript:;">返回修改</a>
                    </div>
                </div>
                <div class="identity-finish g-hide">
                    <div class="wgt-dialog-title ui-tip success1" style="font-size:12px;">恭喜您完成实名认证，现在可以投资了！</div>
                                        <span style="padding-left:40px;" class="disabled">为了进一步提升您的账户安全和提现便利，建议您现在进行银行卡认证。</span>
                    <div class="ui-form-line ui-form-action" style="padding-bottom:20px;">
                        <a class="ui-button ui-button-orange btn-bankcard-auth" href="my/authinfo-_=1505637956.htm#bankcard"  style="margin-left:40px;">银行卡认证</a>
                        <a class="blue" style="margin-left:10px;" href="invest.shtml.htm" >立即投资</a>
                    </div>
                                    </div>
            </form>
        </fieldset>
    </div>
</div><div id="wgt-dialog-identity-pay-wrapper" class="g-hide">
    <div class="wgt-dialog wgt-dialog-safety-pay wgt-dialog-identity-pay">
        <fieldset class="ui-form">
            <form id="identity-pay-form">
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
        <a href="2.0/views/account/back_password.shtml-tab=2.htm"  class="blue" target="_blank">忘记交易密码？</a>
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
        <a class="ui-button ui-button-orange" href="my/recharge.htm"  target="_blank">立即充值</a>
       <img alt="" src="s/img/icons/tip/info.png"  style="margin-top: 8px;padding-left: 15px;position: absolute;"><label style="padding-left: 34px;margin-top: 1px;"   class="ui-tip" >需充值 <span class="account-name" id='real_money'></span>元</label>
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
</div><div class="pay-confirm-form g-hide">
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
        <a href="2.0/views/account/back_password.shtml-tab=2.htm"  class="blue" target="_blank">忘记交易密码？</a>
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
        <a class="ui-button ui-button-orange" href="my/recharge.htm"  target="_blank">立即充值</a>
       <img alt="" src="s/img/icons/tip/info.png"  style="margin-top: 8px;padding-left: 15px;position: absolute;"><label style="padding-left: 34px;margin-top: 1px;"   class="ui-tip" >需充值 <span class="account-name" id='real_money'></span>元</label>
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
<div class="clear"></div>
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="2.0/views/about/about.shtml.htm"  target="_blank">关于我们</a></h2><p><a href="2.0/views/about/team.shtml.htm"  target="_blank">团队介绍</a></p><p><a href="2.0/views/about/xr_history.shtml.htm"  target="_blank">发展历程</a></p><p><a href="2.0/views/about/xr_credit.shtml.htm"  target="_blank">资质荣誉</a></p><p><a href="2.0/views/about/partner.shtml.htm"  target="_blank">合作机构</a></p></li>
<li><h2><a href="2.0/views/about/help.shtml.htm"  target="_blank">帮助中心</a></h2><p><a href="2.0/views/about/guide/guide1.shtml.htm"  target="_blank">新手指引</a></p><p><a href="2.0/views/about/help.shtml-tab=tab1.htm"  target="_blank">问题答疑</a></p><p><a href="2.0/views/about/help.shtml-tab=tab10.htm"  target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum-49-1.html'"  target="_blank">意见反馈</a></p></li>
<li><h2><a href="2.0/views/about/about.shtml.htm"  target="_blank">信息中心</a></h2><p><a href="2.0/views/about/xr_announcement.shtml.htm"  target="_blank">平台公告</a></p><p><a href="2.0/views/about/media_report.shtml.htm" target="_blank">媒体报道</a></p><p><a href="2.0/views/about/activitysum.shtml.htm"  target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xinrong.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xinrong.com/forum.php'"  target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="2.0/vip.html"  target="_blank">VIP特权</a></p><p><a href="gift.htm"  target="_blank">积品汇</a></p><p><a href="action/jf.htm"  target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><p><img src="s/img/w02.jpg"  width="100"></p><h4>关注服务号</h4></li><li><p><img src="s/img/w05.jpg"  width="100"></p><h4>关注订阅号</h4></li><li><p><img src="s/img/w06.jpg"  width="100"></p><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'"  title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><p><img src="2.0/images/qq.png" width="120"></p><h4>QQ号：4007779888</h4></li>
</ul></li>
<li class="fb03"><a href="javascript:if(confirm('http://weibo.com/u/2719695463?profile_ftype=1&is_all=1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0'" target="_blank" title="微博"><i class="AllIcon icon03"></i></a></li>
</ul>
</div>
</div>
<div class="footer_app right">
  <img src="s/img/w07.jpg"  width="122" class="bimg" /><h2>下载手机客户端<i class="AllIcon icon01"></i> <i class="AllIcon icon02"></i></h2> </div>
<div class="black10"></div>
</div>
</div><!--end-->
<div class="clear"></div>
<div class="footer_pic">
<ul>
<li><a target="_blank" href="javascript:if(confirm('http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86'"  title="深圳市市场监督管理局企业主体身份公示"><i class="icon01"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN'"  title="信融财富是中国第一家引入VeriSign 256位SSL加密的融资理财平台。您的隐私及个人资料安全已受最高级别的保护。"><i class="icon03"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401'"  title="中国信用企业"><i class="icon02"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://search.szfw.org/cert/l/CX20140805008628008716  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://search.szfw.org/cert/l/CX20140805008628008716'"  title="诚信网站"><i class="icon04"></i></a></li>
<li><a title="腾讯云安全认证"><i class="icon05"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business'"  title="安全联盟认证网站"><i class="icon06"></i></a></li>
</ul>
</div>
<div class="clear"></div>
<div class="footer_font main"><p> <a href="about/privacy.htm" target="_blank">隐私保护申明</a> 　|　 <a href="about/agreement.htm" target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright Xinrong.com All Rights Reserved   信融财富投资管理有限公司</div>
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
						url:'v2/communication/free_consulation.jso'/*tpa=https://xin/v2/communication/free_consulation.jso*/,
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
		url:'v2/login/in_session_data.jso'/*tpa=https://xin/v2/login/in_session_data.jso*/,
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



<script src="s/vendor/artDialog/jquery.artDialog-min.js-v=1591" ></script>
<script src="s/vendor/artDialog/dialog_ex.js-v=1591" ></script>
<script src="s/js/biz/dlg_login-min.js-v=1591" ></script>
<input type="hidden" id="login_redirect" value=""/>
<script>AA.View.TopNav.init();</script>


<script type="text/javascript" src="2.0/js/channel.js" ></script> 

<script>
var _hmt = _hmt || [];
(function() {
	
	var agent=navigator.userAgent;
	
	if(agent.indexOf('android')==-1&&agent.indexOf('Android')==-1){
		var hm = document.createElement("script");
		hm.src = "../hm.baidu.com/hm.js-a5ef11ea1e672f6b504ec7fe5a92cf30"/*tpa=https://hm.baidu.com/hm.js?a5ef11ea1e672f6b504ec7fe5a92cf30*/;
		 var s = document.getElementsByTagName("script")[0]; 
		s.parentNode.insertBefore(hm, s);
	}
	
  
})();
</script>






</body>
</html>