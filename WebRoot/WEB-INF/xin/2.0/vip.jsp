<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

 <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>信融财富</title>
    <link href="css/basic.css" tppabs="https://xin/2.0/css/basic.css" rel="stylesheet" type="text/css"/>
    <link href="css/Account.css" tppabs="https://xin/2.0/css/Account.css" rel="stylesheet" type="text/css" />
    <link href="css/tip.css" tppabs="https://xin/2.0/css/tip.css" rel="stylesheet" type="text/css" />
    <link href="css/dialog.css" tppabs="https://xin/2.0/css/dialog.css" rel="stylesheet" type="text/css" />
    <link href="css/global.css" tppabs="https://xin/2.0/css/global.css" rel="stylesheet" type="text/css" />
    <link href="../s/vendor/datepicker/skin/WdatePicker.css" tppabs="https://xin/s/vendor/datepicker/skin/WdatePicker.css" rel="stylesheet" type="text/css" />
    <link href="css/dialog-wbox.css" tppabs="https://xin/2.0/css/dialog-wbox.css" rel="stylesheet" type="text/css" />
    <link href="css/vip.css" tppabs="https://xin/2.0/css/vip.css" rel="stylesheet" type="text/css"/>
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
    <script type="text/javascript" src="js/jquery-1.10.2.js" tppabs="https://xin/2.0/js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../s/vendor/artDialog/jquery.artDialog.js" tppabs="https://xin/s/vendor/artDialog/jquery.artDialog.js"></script>
    <script type="text/javascript" src="../s/vendor/artDialog/dialog_ex.js" tppabs="https://xin/s/vendor/artDialog/dialog_ex.js"></script>
    <script type="text/javascript" src="js/tytabs.jquery.new.js" tppabs="https://xin/2.0/js/tytabs.jquery.new.js"></script>
    <script type="text/javascript" src="js/jquery.imgscroll.min.js" tppabs="https://xin/2.0/js/jquery.imgscroll.min.js"></script>
    <script src="js/jquery-webox.js" tppabs="https://xin/2.0/js/jquery-webox.js" type="text/jscript"></script>
    <script type="text/javascript" src="../s/vendor/datepicker/WdatePicker.js" tppabs="https://xin/s/vendor/datepicker/WdatePicker.js"></script>
    <script type="text/javascript" src="js/wbox.js" tppabs="https://xin/2.0/js/wbox.js"></script>
    <script type="text/javascript" src="js/AA.base-min.js" tppabs="https://xin/2.0/js/AA.base-min.js"></script>
    <script type="text/javascript" src="js/XR.base.js" tppabs="https://xin/2.0/js/XR.base.js"></script>
    <script type="text/javascript" src="js/pagination-min2.js" tppabs="https://xin/2.0/js/pagination-min2.js"></script>
    <script type="text/javascript" src="js/mod/login.js" tppabs="https://xin/2.0/js/mod/login.js"></script>
    <script type="text/javascript" src="js/mod/phone.js" tppabs="https://xin/2.0/js/mod/phone.js"></script>
    <script type="text/javascript" src="js/rsa.js" tppabs="https://xin/2.0/js/rsa.js"></script>
    <script type="text/javascript" src="js/common.js" tppabs="https://xin/2.0/js/common.js"></script>
    <script type="text/javascript" src="js/api/common_api.js" tppabs="https://xin/2.0/js/api/common_api.js"></script>
    <script type="text/javascript" src="js/api/user_api.js" tppabs="https://xin/2.0/js/api/user_api.js"></script>
    <script type="text/javascript" src="js/address/area.js" tppabs="https://xin/2.0/js/address/area.js"></script>
    <script type="text/javascript" src="js/date.js" tppabs="https://xin/2.0/js/date.js"></script>
    <script type="text/javascript" src="js/address/location.js" tppabs="https://xin/2.0/js/address/location.js"></script>
    <script type="text/javascript" src="js/rsa.js" tppabs="https://xin/2.0/js/rsa.js"></script>
    <script type="text/javascript" src="../webapp2.0/js/wbox.js" tppabs="https://xin/webapp2.0/js/wbox.js"></script>
    <script type="text/javascript" src="js/channel.js" tppabs="https://xin/2.0/js/channel.js"></script>
    <script type="text/javascript">
        $(window).load(function(){
            if (getUrlParam('tab')!=null && document.location.href.indexOf('#')) {
                var url=document.location.href;
                url=url.substring(0,url.indexOf("?tab"));
                history.replaceState(null, document.title, url);
            }
        })

    </script>
    </head>
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
    <div class="logo left PositionR"><a href="../index.htm" tppabs="https://xin/index.shtml"><img src="images/logo.gif" tppabs="https://xin/2.0/images/logo.gif" /></a><a href="views/about/shareholder.shtml.htm" tppabs="https://xin/2.0/views/about/shareholder.shtml" class="logo_font">上市公司系</a></div>
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
        <li><a href="views/about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="views/about/invest_help.shtml.htm" tppabs="https://xin/2.0/views/about/invest_help.shtml" target="_blank">投资帮助</a></li>
          	<li><a href="views/about/risk.shtml.htm" tppabs="https://xin/2.0/views/about/risk.shtml" target="_blank">风险控制</a></li>
            <li><a href="views/about/laws_regulations.shtml.htm#navLaws" tppabs="https://xin/2.0/views/about/laws_regulations.shtml#navLaws" target="_blank">法律法规</a></li>
          </ul>
        </li>
        <li><a href="views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="views/about/about.shtml.htm" tppabs="https://xin/2.0/views/about/about.shtml" id="nav_about_index">公司简介</a></li>
            <li><a href="views/about/team.shtml.htm" tppabs="https://xin/2.0/views/about/team.shtml">团队介绍</a></li>
            <li><a href="views/about/service_data.shtml.htm" tppabs="https://xin/2.0/views/about/service_data.shtml">运营数据</a></li>
            <li><a href="views/about/partner.shtml.htm" tppabs="https://xin/2.0/views/about/partner.shtml">合作机构</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="vip.html" tppabs="https://xin/2.0/vip.html" id="nav_vip">VIP特权</a></div>
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
				url:'https://xin/v2/login/in_session_data.jso',
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
 
    <!--banner-->
    <div class="banner">
      <div>
        <div class="button_box"> <a href="action/zt_vip/vip_zt.shtml.htm" tppabs="https://xin/2.0/action/zt_vip/vip_zt.shtml">立即开通</a>
          <p>方式一：仅需150元/年，低投入高回报享特权<br/>
            方式二：普通用户最近31天内累计投资满5万元即可升级</p>
        </div>
      </div>
    </div>
    <!--等级介绍-->
    <div class="member_rating module_box">
      <div class="module">
        <h1>会员等级<span>MEMBERSHIP LEVEL</span><b><i></i></b></h1>
        <h4>成长值越高，VIP等级越高，特权越强越多！</h4>
        <img src="images/vip/member_rating.jpg" tppabs="https://xin/2.0/images/vip/member_rating.jpg" /> </div>
    </div>
    <!--您的特权-->
    <div class="your_privilege module_box">
      <div class="module">
        <h1>您的特权<span>YOUR PRIVILEGES</span><b><i></i></b></h1>
        <!--登录-->
        <div class="login_box box" id="login_box" style="display: block;"> <span>登录查看我的专属特权</span> <a href="javascript:void(0)" onclick="AA.RapidLogin.popup()"c>登录</a> </div>
        <!--登录后为普通用户-->
        <div class="normal_box box" id="normal_box">
          <div>亲爱的用户，成为VIP可尊享更多特权！</div>
        </div>
        <!--登录后为VIP用户-->
        <div class="vip_box box" id="vip_box">
          <div>尊敬的<b id="vip_current">--</b>会员，您还需要<b id="vip_upgrade_point">--</b>成长值即可升级<span id="vip_next">--</span></div>
          <div>VIP有效期至 : <span id="vip_deadline">--</span></div>
        </div>
        <div class="vip_box box" id="vip_box9" style="display: none;">
          <div>尊敬的<b>VIP9</b>会员，VIP有效期至 : <span id="vip_deadline9">--</span></div>
        </div>
        <div class="privilege_box" id="privilege_box">
          <ul id="privilege_list" class="privilege_list">
          </ul>
          <div class="blur_left"></div>
          <div class="blur_right"></div>
        </div>
      </div>
    </div>
    <!--会员特权--> 
    <a id="member_privilege"></a>
    <div class="member_privilege module_box">
      <div class="module">
        <h1>会员特权<span>MEMBERSHIP PRIVILEGES</span><b><i></i></b></h1>
        <table>
          <thead>
            <tr>
              <th>分类</th>
              <th width="17%">特权项</th>
              <th align="center">普通用户</th>
              <th align="center" class="vip">VIP1</th>
              <th align="center" class="vip">VIP2</th>
              <th align="center" class="vip">VIP3</th>
              <th align="center" class="vip">VIP4</th>
              <th align="center" class="vip">VIP5</th>
              <th align="center" class="vip">VIP6</th>
              <th align="center" class="vip">VIP7</th>
              <th align="center" class="vip">VIP8</th>
              <th align="center" class="vip">VIP9</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td rowspan="7">增值服务类</td>
              <td class="first">当月单笔投资100万<br/>
              可获10万积分/次</td>
              <td align="center">无</td>
              <td align="center">1次</td>
              <td align="center">2次</td>
              <td align="center">3次</td>
              <td align="center">4次</td>
              <td align="center">5次</td>
              <td align="center">6次</td>
              <td align="center">7次</td>
              <td align="center">8次</td>
              <td align="center">9次</td>
            </tr>
            <tr>
              <td class="first">每日投资上限</td>
              <td align="center">10万元</td>
              <td align="center">100万元</td>
              <td align="center">200万元</td>
              <td align="center">300万元</td>
              <td align="center">500万元</td>
              <td align="center">800万元</td>
              <td align="center">1200万元</td>
              <td align="center">2000万元</td>
              <td align="center">3000万元</td>
              <td align="center">5000万元</td>
            </tr>
            <tr>
              <td class="first">每日提现上限</td>
              <td align="center">30万元</td>
              <td align="center">50万元</td>
              <td align="center">80万元</td>
              <td align="center">100万元</td>
              <td align="center">120万元</td>
              <td align="center">150万元</td>
              <td align="center">200万元</td>
              <td align="center">300万元</td>
              <td align="center">400万元</td>
              <td align="center">500万元</td>
            </tr>
            <tr>
              <td class="first">抽奖次数每日上限</td>
              <td align="center">10次</td>
              <td align="center">12次</td>
              <td align="center">12次</td>
              <td align="center">15次</td>
              <td align="center">18次</td>
              <td align="center">20次</td>
              <td align="center">22次</td>
              <td align="center">25次</td>
              <td align="center">28次</td>
              <td align="center">30次</td>
            </tr>
            <tr>
              <td class="first">积品汇折扣</td>
              <td align="center">无</td>
              <td align="center">9.8折</td>
              <td align="center">9.8折</td>
              <td align="center">9.5折</td>
              <td align="center">9.2折</td>
              <td align="center">9.0折</td>
              <td align="center">8.8折</td>
              <td align="center">8.5折</td>
              <td align="center">8.2折</td>
              <td align="center">8.0折</td>
            </tr>
            <tr>
              <td class="first">资金变动短信提醒</td>
              <td align="center">无</td>
              <td colspan="9" align="center">免费提醒</td>
            </tr>
            <tr>
              <td class="first">债权转让
                <p class="f_gray">(近30日转让上限 <a class="blue" href="../action/trans.htm" tppabs="https://xin/action/trans" target="_blank">查看规则</a>)</p></td>
              <td align="center">不可转让</td>
              <td align="center">180万</td>
              <td align="center">180万</td>
              <td align="center">225万</td>
              <td align="center">300万</td>
              <td align="center">450万</td>
              <td align="center">750万</td>
              <td align="center">900万</td>
              <td align="center">1200万</td>
              <td align="center">1500万</td>
            </tr>
            <tr>
              <td rowspan="2">自动投资</td>
              <td class="first">优先权</td>
              <td align="center">低于VIP1</td>
              <td colspan="9" align="center">高VIP等级优先；同VIP等级高成长值优先；同成长值注册较早者优先</td>
            </tr>
            <tr>
              <td class="first">启动时间</td>
              <td align="center">5分钟</td>
              <td align="center">120秒</td>
              <td align="center">60秒</td>
              <td align="center">45秒</td>
              <td align="center">30秒</td>
              <td align="center">20秒</td>
              <td align="center">15秒</td>
              <td align="center">10秒</td>
              <td align="center">5秒</td>
              <td align="center">0秒</td>
            </tr>
            <tr id='fare_recharge'>
              <td >个人投资月报</td>
              <td class="first">个人投资月报</td>
              <td align="center"><span class="first">无</span></td>
              <td colspan="9" align="center">免费提供</td>
            </tr>
            <tr>
              <td rowspan="10">奖励类
                <p class="f_gray">（存入信存宝仅<br />
                  奖励成长值，不<br />
                  享受其他奖励）</p></td>
              <td class="first">升级投资礼金奖励</td>
              <td align="center">无</td>
              <td align="center">无</td>
              <td align="center">50元</td>
              <td align="center">80元</td>
              <td align="center">120元</td>
              <td align="center">150元</td>
              <td align="center">200元</td>
              <td align="center">300元</td>
              <td align="center">400元</td>
              <td align="center">500元</td>
            </tr>
            <tr >
              <td class="first" >充值话费积分奖励
                <p class="f_gray">每个账户首次充值话费100元以上(含100)，额外再赠送1000积分。（每天每人上限500元）</p></td>
              <td align="center">1倍</td>
              <td align="center">1.1倍</td>
              <td align="center">1.1倍</td>
              <td align="center">1.2倍</td>
              <td align="center">1.2倍</td>
              <td align="center">1.3倍</td>
              <td align="center">1.3倍</td>
              <td align="center">1.4倍</td>
              <td align="center">1.4倍</td>
              <td align="center">1.5倍</td>
            </tr>
            <tr>
              <td class="first"><a class="blue" href="#growth_rules">成长值（次日2点发放）、投资积分累积速度</a></td>
              <td align="center">1倍</td>
              <td align="center">1.1倍</td>
              <td align="center">1.1倍</td>
              <td align="center">1.2倍</td>
              <td align="center">1.2倍</td>
              <td align="center">1.3倍</td>
              <td align="center">1.3倍</td>
              <td align="center">1.4倍</td>
              <td align="center">1.4倍</td>
              <td align="center">1.5倍</td>
            </tr>
            <tr>
              <td class="first"><span>每推荐1个投资人奖励礼金：</span>
                <p class="ui-tip" style="padding-left:0px;"><a href="../action/reg_invite.htm" tppabs="https://xin/action/reg_invite" target="_blank" class="blue">详情参见</a></p></td>
              <td align="center">0.3％</td>
              <td align="center">0.5％</td>
              <td align="center">0.5%</td>
              <td align="center">0.6%</td>
              <td align="center">0.6%</td>
              <td align="center">0.7%</td>
              <td align="center">0.7%</td>
              <td align="center">0.8%</td>
              <td align="center">0.9%</td>
              <td align="center">1%</td>
            </tr>
            <tr>
              <td class="first"> 被推荐人付费开通VIP时，奖励推荐人礼金 </td>
              <td align="center">无</td>
              <td align="center">20元</td>
              <td align="center">25元</td>
              <td align="center">30元</td>
              <td align="center">35元</td>
              <td align="center">40元</td>
              <td align="center">45元</td>
              <td align="center">50元</td>
              <td align="center">80元</td>
              <td align="center">100元</td>
            </tr>
            <tr>
              <td class="first"> 被推荐人VIP等级每升1级，奖励推荐人礼金 </td>
              <td align="center">无</td>
              <td align="center">20元</td>
              <td align="center">25元</td>
              <td align="center">30元</td>
              <td align="center">35元</td>
              <td align="center">40元</td>
              <td align="center">45元</td>
              <td align="center">50元</td>
              <td align="center">80元</td>
              <td align="center">100元</td>
            </tr>
            <tr>
              <td><a name="sr"></a> 生日礼金
                <p class="f_gray">（VIP用户近一年投资额满5万元）</p></td>
              <td align="center">无</td>
              <td align="center">20元</td>
              <td align="center">50元</td>
              <td align="center">80元</td>
              <td align="center">120元</td>
              <td align="center">150元</td>
              <td align="center">200元</td>
              <td align="center">300元</td>
              <td align="center">500元</td>
              <td align="center">600元</td>
            </tr>
            <tr>
              <td> 中秋礼金
                <p class="f_gray">（VIP用户近3月投资额满5万元）</p></td>
              <td align="center">无</td>
              <td align="center">10元</td>
              <td align="center">20元</td>
              <td align="center">30元</td>
              <td align="center">50元</td>
              <td align="center">80元</td>
              <td align="center">120元</td>
              <td align="center">150元</td>
              <td align="center">200元</td>
              <td align="center">300元</td>
            </tr>
            <tr>
              <td> 春节礼金
                <p class="f_gray">（VIP用户近3月投资额满5万元）</p></td>
              <td align="center">无</td>
              <td align="center">15元</td>
              <td align="center">30元</td>
              <td align="center">50元</td>
              <td align="center">80元</td>
              <td align="center">120元</td>
              <td align="center">150元</td>
              <td align="center">200元</td>
              <td align="center">300元</td>
              <td align="center">500元</td>
            </tr>
            <tr>
              <td><a id="privilege">&nbsp;</a> 女生节积分
                <p class="f_gray">（VIP用户近3月投资额满5万元限女性）</p></td>
              <td align="center">无</td>
              <td colspan="9" align="center">3800积分</td>
            </tr>
            <tr>
              <td rowspan="3">收费类</td>
              <td class="first">投资服务费
                <p class="f_gray">按投资时等级收取、按收益的百分比收取</p></td>
              <td align="center">10%</td>
              <td align="center">8%</td>
              <td align="center">7%</td>
              <td align="center">6%</td>
              <td align="center">5%</td>
              <td align="center">4%</td>
              <td align="center">3%</td>
              <td align="center">2%</td>
              <td align="center">1%</td>
              <td align="center">免费</td>
            </tr>
            <tr>
              <td class="first">提现费用(每笔)
                <p class="f_gray">提现后赠送提现手续费用金额（不包含额外手续费）50%的投资礼金</p></td>
              <td align="center">2元</td>
              <td align="center">1元</td>
              <td align="center">1元</td>
              <td align="center">免费</td>
              <td align="center">免费</td>
              <td align="center">免费</td>
              <td align="center">免费</td>
              <td align="center">免费</td>
              <td align="center">免费</td>
              <td align="center">免费</td>
            </tr>
            <tr>
              <td class="first">风险准备金
                <p class="f_gray">（按借款时等级收取，按借款本金的百分比收取）</p></td>
              <td align="center"><p >5%</p></td>
              <td align="center"><p >2%</p></td>
              <td align="center"><p >1%</p></td>
              <td align="center"><p >0%</p></td>
              <td align="center"><p >0%</p></td>
              <td align="center"><p >0%</p></td>
              <td align="center"><p >0%</p></td>
              <td align="center"><p >0%</p></td>
              <td align="center"><p >0%</p></td>
              <td align="center"><p >0%</p></td>
            </tr>
            <tr>
              <td rowspan="3">朵朵来电</td>
              <td class="first">免费通话时长</td>
              <td align="center">无</td>
              <td align="center">60分钟<br />
                *12月</td>
              <td align="center">80分钟<br />
                *12月</td>
              <td align="center">120分钟<br />
                *12月</td>
              <td align="center">180分钟<br />
                *12月</td>
              <td align="center">260分钟<br />
                *12月</td>
              <td align="center">360分钟<br />
                *12月</td>
              <td align="center">560分钟<br />
                *12月</td>
              <td align="center">800分钟<br />
                *12月</td>
              <td align="center">1200分钟<br />
                *12月</td>
            </tr>
            <tr>
              <td class="first">推荐注册送</td>
              <td colspan="10" align="center">30分钟
                <p class="f_gray">（16年3月11起每推荐1位好友注册成功，双方均可获30分钟，限首次；之后每推荐1位，推荐人可获10分钟，被推荐人可获30分钟。）</p></td>
            </tr>
            <tr>
              <td class="first">推荐投资送</td>
              <td colspan="10" align="center">60分钟
                <p class="f_gray">（好友注册后投资，双方均可获得60分钟免费时长。）</p></td>
            </tr>
          </tbody>
        </table>
        <div id="tabsholder" class="tabsholder" style=" display:none;">
          <ul class="tabs">
            <li id="tab1">投资特权</li>
            <li id="tab2">增值服务</li>
            <li id="tab3">借款特权</li>
          </ul>
          <div class="contents"> 
            <!--投资特权-->
            <div id="content1" class="tabscontent">
              <table>
                <thead>
                  <tr>
                    <td>特权项</td>
                    <td>普通用户</td>
                    <td>VIP1</td>
                    <td>VIP2</td>
                    <td>VIP3</td>
                    <td>VIP4</td>
                    <td>VIP5</td>
                    <td>VIP6</td>
                    <td>VIP7</td>
                    <td>VIP8</td>
                    <td>VIP9</td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>自动投资优先权</td>
                    <td>低于VIP1</td>
                    <td colspan="9">高VIP等级优先；同VIP等级高成长值优先；同成长值注册较早者优先</td>
                  </tr>
                  <tr>
                    <td>自动投资启动时间</td>
                    <td>5分钟</td>
                    <td>120秒</td>
                    <td>60秒</td>
                    <td>45秒</td>
                    <td>30秒</td>
                    <td>20秒</td>
                    <td>15秒</td>
                    <td>10秒</td>
                    <td>5秒</td>
                    <td>0秒</td>
                  </tr>
                  <tr>
                    <td>个人投资月报</td>
                    <td>—</td>
                    <td colspan="9">免费提供</td>
                  </tr>
                  <tr>
                    <td><a href="#growth_rules">成长值（次日2点发放）、投资积分累积速度</a></td>
                    <td>1倍</td>
                    <td>1.1倍</td>
                    <td>1.1倍</td>
                    <td>1.2倍</td>
                    <td>1.2倍</td>
                    <td>1.3倍</td>
                    <td>1.3倍</td>
                    <td>1.4倍</td>
                    <td>1.4倍</td>
                    <td>1.5倍</td>
                  </tr>
                  <tr>
                    <td>升级投资礼金奖励</td>
                    <td>—</td>
                    <td>—</td>
                    <td>50元</td>
                    <td>80元</td>
                    <td>120元</td>
                    <td>150元</td>
                    <td>200元</td>
                    <td>300元</td>
                    <td>400元</td>
                    <td>500元</td>
                  </tr>
                  <tr>
                    <td>债权转让</td>
                    <td>—</td>
                    <td colspan="9">可转让<a href="../action/trans.htm" tppabs="https://xin/action/trans">(查看规则)</a></td>
                  </tr>
                  <tr>
                    <td>生日礼金<i><br/>
                      ( VIP用户近一年投资额满5万元 )</i></td>
                    <td>—</td>
                    <td>20元</td>
                    <td>50元</td>
                    <td>80元</td>
                    <td>120元</td>
                    <td>150元</td>
                    <td>200元</td>
                    <td>300元</td>
                    <td>500元</td>
                    <td>600元</td>
                  </tr>
                  <tr>
                    <td>中秋礼金<i><br/>
                      ( VIP用户近3个月投资额满5万元 )</i></td>
                    <td>—</td>
                    <td>10元</td>
                    <td>20元</td>
                    <td>30元</td>
                    <td>50元</td>
                    <td>80元</td>
                    <td>120元</td>
                    <td>150元</td>
                    <td>200元</td>
                    <td>300元</td>
                  </tr>
                  <tr id="half_view">
                    <td>春节礼金<i><br/>
                      ( VIP用户近3个月投资额满5万元 )</i></td>
                    <td>—</td>
                    <td>15元</td>
                    <td>30元</td>
                    <td>50元</td>
                    <td>80元</td>
                    <td>120元</td>
                    <td>150元</td>
                    <td>200元</td>
                    <td>300元</td>
                    <td>500元</td>
                  </tr>
                  <tr>
                    <td>女生节积分<i><br/>
                      ( VIP用户近3个月投资额满5万元限女性 )</i></td>
                    <td>—</td>
                    <td colspan="9">3800积分</td>
                  </tr>
                  <tr>
                    <td>投资服务费<i><br/>
                      按投资时等级收取、按收益的百分比收取</i></td>
                    <td>10%</td>
                    <td>8%</td>
                    <td>7%</td>
                    <td>6%</td>
                    <td>5%</td>
                    <td>4%</td>
                    <td>3%</td>
                    <td>2%</td>
                    <td>1%</td>
                    <td>免费</td>
                  </tr>
                  <tr>
                    <td>每日投资上限</td>
                    <td>10万元</td>
                    <td>100万元</td>
                    <td>200万元</td>
                    <td>300万元</td>
                    <td>500万元</td>
                    <td>800万元</td>
                    <td>1200万元</td>
                    <td>2000万元</td>
                    <td>3000万元</td>
                    <td>5000万元</td>
                  </tr>
                  <tr>
                    <td>当月单笔投资100万可获10万积分/次</td>
                    <td>—</td>
                    <td>1次</td>
                    <td>2次</td>
                    <td>3次</td>
                    <td>4次</td>
                    <td>5次</td>
                    <td>6次</td>
                    <td>7次</td>
                    <td>8次</td>
                    <td>9次</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!--增值服务-->
            <div id="content2" class="tabscontent">
              <table>
                <thead>
                  <tr>
                    <td>特权项</td>
                    <td>普通用户</td>
                    <td>VIP1</td>
                    <td>VIP2</td>
                    <td>VIP3</td>
                    <td>VIP4</td>
                    <td>VIP5</td>
                    <td>VIP6</td>
                    <td>VIP7</td>
                    <td>VIP8</td>
                    <td>VIP9</td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>朵朵来电免费通话时长</td>
                    <td>—</td>
                    <td>60分钟<br/>
                      /月</td>
                    <td>80分钟<br/>
                      /月</td>
                    <td>120分钟<br/>
                      /月</td>
                    <td>180分钟<br/>
                      /月</td>
                    <td>260分钟<br/>
                      /月</td>
                    <td>360分钟<br/>
                      /月</td>
                    <td>560分钟<br/>
                      /月</td>
                    <td>800分钟<br/>
                      /月</td>
                    <td>1200分钟<br/>
                      /月</td>
                  </tr>
                  <tr>
                    <td>朵朵来电推荐注册送</td>
                    <td colspan="10">30分钟<i><br/>
                      (16年3月11起每推荐1位好友注册成功，双方均可获30分钟，限首次；之后每推荐1位，推荐人可获10分钟，被推荐人可获30分钟。)</i></td>
                  </tr>
                  <tr>
                    <td>朵朵来电推荐投资送</td>
                    <td colspan="10">60分钟<i><br/>
                      (好友注册后投资，双方均可获得60分钟免费时长。)</i></td>
                  </tr>
                  <tr>
                    <td>每日提现上限</td>
                    <td>30万元</td>
                    <td>50万元</td>
                    <td>80万元</td>
                    <td>100万元</td>
                    <td>120万元</td>
                    <td>150万元</td>
                    <td>200万元</td>
                    <td>300万元</td>
                    <td>400万元</td>
                    <td>500万元</td>
                  </tr>
                  <tr>
                    <td>充值话费积分奖励<i><br/>
                      每个账户首次充值话费100元以上(含100)，额外再赠送1000积分。(每天每人上限500元)</i></td>
                    <td>1倍</td>
                    <td>1.1倍</td>
                    <td>1.1倍</td>
                    <td>1.2倍</td>
                    <td>1.2倍</td>
                    <td>1.3倍</td>
                    <td>1.3倍</td>
                    <td>1.4倍</td>
                    <td>1.4倍</td>
                    <td>1.5倍</td>
                  </tr>
                  <tr>
                    <td>抽奖次数每日上限</td>
                    <td>10次</td>
                    <td>12次</td>
                    <td>12次</td>
                    <td>15次</td>
                    <td>18次</td>
                    <td>20次</td>
                    <td>22次</td>
                    <td>25次</td>
                    <td>28次</td>
                    <td>30次</td>
                  </tr>
                  <tr>
                    <td>积品汇折扣</td>
                    <td>—</td>
                    <td>9.8折</td>
                    <td>9.8折</td>
                    <td>9.5折</td>
                    <td>9.2折</td>
                    <td>9.0折</td>
                    <td>8.8折</td>
                    <td>8.5折</td>
                    <td>8.2折</td>
                    <td>8.0折</td>
                  </tr>
                  <tr>
                    <td>每推荐1个投资人奖励礼金 : <a href="../action/reg_invite.htm" tppabs="https://xin/action/reg_invite"><br/>
                      详情参见</a></td>
                    <td>0.3%</td>
                    <td>0.5%</td>
                    <td>0.5%</td>
                    <td>0.6%</td>
                    <td>0.6%</td>
                    <td>0.7%</td>
                    <td>0.7%</td>
                    <td>0.8%</td>
                    <td>0.9%</td>
                    <td>1.0%</td>
                  </tr>
                  <tr>
                    <td>被推荐人付费开通VIP时，<br/>
                      奖励推荐人礼金</td>
                    <td>—</td>
                    <td>20元</td>
                    <td>25元</td>
                    <td>30元</td>
                    <td>35元</td>
                    <td>40元</td>
                    <td>45元</td>
                    <td>50元</td>
                    <td>80元</td>
                    <td>100元</td>
                  </tr>
                  <tr>
                    <td>被推荐人VIP等级每升1级，<br/>
                      奖励推荐人礼金</td>
                    <td>—</td>
                    <td>20元</td>
                    <td>25元</td>
                    <td>30元</td>
                    <td>35元</td>
                    <td>40元</td>
                    <td>45元</td>
                    <td>50元</td>
                    <td>80元</td>
                    <td>100元</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!--借款特权-->
            <div id="content3" class="tabscontent">
              <table>
                <thead>
                  <tr>
                    <td>特权项</td>
                    <td>普通用户</td>
                    <td>VIP1</td>
                    <td>VIP2</td>
                    <td>VIP3</td>
                    <td>VIP4</td>
                    <td>VIP5</td>
                    <td>VIP6</td>
                    <td>VIP7</td>
                    <td>VIP8</td>
                    <td>VIP9</td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>资金变动短信提醒</td>
                    <td>—</td>
                    <td colspan="9">免费提醒</td>
                  </tr>
                  <tr>
                    <td>提现费用(每笔)<i><br/>
                      提现后赠送提现手续费用金额（不包含额外手续费）50%的投资礼金,最多返还2.5元投资礼金</i></td>
                    <td>5元</td>
                    <td>3元</td>
                    <td>3元</td>
                    <td>2元</td>
                    <td>2元</td>
                    <td>1元</td>
                    <td>1元</td>
                    <td>免费</td>
                    <td>免费</td>
                    <td>免费</td>
                  </tr>
                  <tr>
                    <td>风险准备金<i><br/>
                      (按借款时等级收取，按借款本金的百分比收取)</i></td>
                    <td>5%</td>
                    <td>2%</td>
                    <td>1%</td>
                    <td>0%</td>
                    <td>0%</td>
                    <td>0%</td>
                    <td>0%</td>
                    <td>0%</td>
                    <td>0%</td>
                    <td>0%</td>
                  </tr>
                  <!--<tr><td>借款额度提高奖</td><td colspan="10">每成功推荐一位好友注册并借款成功，借款人借款额度即可提高被推荐人首笔借款金额的百分之一</td></tr>-->
                </tbody>
              </table>
            </div>
          </div>
          <div class="notes">注：信融财富保留对以上规则进行适当调整权利。</div>
        </div>
      </div>
    </div>
    <!--特权细则-->
    <div class="privilege_rules module_box" id="growth_rules">
      <div class="module">
        <h1>特权细则<span>PRIVILEGES RULES</span><b><i></i></b></h1>
        <div class="rule_box">
          <h3>成长值及积分值累计规则</h3>
          <ul class="rules">
            <li>
              <p>普通用户积分值累积公式 : <br/>
                投资积分 ＝ 投资金额×0.25×项目月数</p>
            </li>
            <li>
              <p>VIP用户积分值累积公式 : <br/>
                投资积分 ＝ 投资金额×0.25×项目月数×VIP等级系数</p>
            </li>
            <li>
              <p>VIP用户成长值累积公式 : <br/>
                每日成长值 ＝ 投资（借款）金额×VIP等级系数 / 120</p>
            </li>
          </ul>
          <p id="example" class="example"> <b>举例如下 : </b><br/>
            ·普通用户投资10000元，项目期限是：6个月<br/>
            &nbsp;&nbsp;积分值＝10000×0.25×6＝15000<br/>
            <br/>
            ·VIP用户投资10000元，项目期限是：6个月<br/>
            &nbsp;&nbsp;积分值＝10000×0.25×6× VIP等级系数 <br/>
            &nbsp;&nbsp;(如VIP1等级系数为1.1，所获积分为16500分；VIP3等级系数为1.2，所获积分为18000分)<br/>
            &nbsp;&nbsp;每日成长值＝10000×VIP等级系数 / 120 <br/>
            &nbsp;&nbsp;(不足1点的舍弃，如VIP1等级系数为1.1，收益期间每日成长值为91点；VIP3等级系数为1.2，每日成长值为100点) </p>
          <!--计算题 begin-->
          <div id="question" class="question" style="display: none;">
            <div class="header"> <span class="title">体育老师教你学数学</span> <span class="note">答对有奖，仅限一次</span> </div>
            <ul>
              <li> <span>·普通用户投资10000元，项目期限：6个月</span> <span>&nbsp;积分值 =
                <input type="text"  value="" id="answer1">
                </span> </li>
              <li> <span>·VIP5用户投资12000元，项目期限：5个月</span> <span>&nbsp;积分值 =
                <input type="text" id="answer2">
                &nbsp;&nbsp;每日成长值 =
                <input type="text" id="answer3">
                </span> </li>
            </ul>
            <div class="btn_box" style="margin-bottom: -30px;margin-top: 0px;color: red;display: none;" id="errMsg"></div>
            <div class="btn_box"><a id="ques_submit" href="javascript:void(0)">提交</a></div>
          </div>
          <!--计算题 end--> 
        </div>
        <div class="vip_upgrade">
          <h3>·VIP等级升级累计投资额(单位：万元)</h3>
          <table>
            <thead>
              <tr>
                <td>VIP等级</td>
                <td>VIP1</td>
                <td>VIP2</td>
                <td>VIP3</td>
                <td>VIP4</td>
                <td>VIP5</td>
                <td>VIP6</td>
                <td>VIP7</td>
                <td>VIP8</td>
                <td>VIP9</td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1个月项目累计投资金额<br/>
                  项目到期后可升级</td>
                <td>—</td>
                <td>18.19</td>
                <td>72.73</td>
                <td>166.67</td>
                <td>666.67</td>
                <td>1538.47</td>
                <td>3076.93</td>
                <td>5714.29</td>
                <td>14285.72</td>
              </tr>
              <tr>
                <td>2个月项目累计投资金额<br/>
                  项目到期后可升级</td>
                <td>—</td>
                <td>9.1</td>
                <td>36.37</td>
                <td>83.34</td>
                <td>333.34</td>
                <td>769.24</td>
                <td>1538.47</td>
                <td>2857.15</td>
                <td>7142.86</td>
              </tr>
              <tr>
                <td>3个月项目累计投资金额<br/>
                  项目到期后可升级</td>
                <td>—</td>
                <td>6.07</td>
                <td>24.25</td>
                <td>55.56</td>
                <td>222.23</td>
                <td>512.83</td>
                <td>1025.65</td>
                <td>1904.77</td>
                <td>4761.91</td>
              </tr>
              <tr>
                <td>6个月项目累计投资金额<br/>
                  项目到期后可升级</td>
                <td>—</td>
                <td>3.04</td>
                <td>12.13</td>
                <td>27.28</td>
                <td>111.12</td>
                <td>256.42</td>
                <td>512.83</td>
                <td>952.39</td>
                <td>2380.96</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <!--常见问题-->
    <div class="common_ques module_box">
      <div class="module">
        <h1>常见问题<span>FAQ</span><b><i></i></b></h1>
        <div class="ques">
          <h4>VIP有效期多久？</h4>
          <p>VIP会员资格有效期为1年。</p>
        </div>
        <div class="ques">
          <h4>如何延长VIP有效期？</h4>
          <p> <b>VIP有效期截止前</b><br>
            &nbsp;&nbsp;1、续费150元/年；<br>
            &nbsp;&nbsp;2、使用积分兑换延长VIP期限（需在VIP期间内兑换）。<br>
            <b>VIP有效期过期后</b><br>
            &nbsp;&nbsp;1、购买150元/年；<br>
            &nbsp;&nbsp;2、参与“近31天内投资满50000送VIP”活动获得，原有VIP等级和成长值将保留不变；<br>
            &nbsp;&nbsp;3、使用积分兑换1年VIP。 </p>
        </div>
        <div class="ques">
          <h4>先买VIP再投资还是直接投资送VIP？</h4>
          <p> <b>目前开通VIP的方式有两种：直接购买和投资满额赠送。<br/>
            以投资10万元、1月项目（预期年化收益率：9.0%，满5万元送VIP）为例进行对比：</b><br/>
            1、先购买VIP，再投资10万元，支出为：100150元；实收收益：690元，积分：27500分，成长值：27500点；<br/>
            2、投资满5万元免费升级VIP再投资5万元，支出：100000元；实收收益：682.5元，积分：26250分，成长值：13750点。 </p>
        </div>
      </div>
    </div>
    <!--popup begin-->
    <div class="popup_window" id="popup_window">
      <div> <i class="popup_close" id="popup_close"><i></i><b></b></i>
        <ul class="popup_ul" id="popup_ul">
          <!--投资特权--> 
          <!--自动投资-->
          <li> <i class="logo"><img src="images/vip/invest_1.png" tppabs="https://xin/2.0/images/vip/invest_1.png" /></i> <span class="explain">自动投资，是指符合条件的信融财富用户，在信融财富平台设置自动投资条件开启自动投资功能，当平台有符合用户设定条件的可投资项目时完成资金的自动投资。</span> </li>
          <!--个人投资月报-->
          <li> <i class="logo"><img src="images/vip/invest_2.png" tppabs="https://xin/2.0/images/vip/invest_2.png" /></i> <span class="explain">投资月报，是信融财富对VIP用户的回馈。是对VIP用户近一个月投资行为的总结和反馈，于次月1号发放至认证邮箱。</span> </li>
          <!--成长值-->
          <li> <i class="logo"><img src="images/vip/invest_3.png" tppabs="https://xin/2.0/images/vip/invest_3.png" /></i> <span class="explain"> 成长值，是信融财富VIP等级升级的基本条件（普通用户无成长值），当“成长值”积累到一定点数，VIP等级就会升级，每次升级所需的“成长值”不同。<br/>
            每日成长值计算公式：<br/>
            每日成长值 ＝ 投资（借款）金额×VIP等级系数 / 120</span> </li>
          <!--升级奖励-->
          <li> <i class="logo"><img src="images/vip/invest_4.png" tppabs="https://xin/2.0/images/vip/invest_4.png" /></i> <span class="explain">升级礼金，是信融财富对VIP用户每次的等级升级提供的一份奖励，级别越高，对应的礼金奖励就越大。</span> </li>
          <!--债权转让-->
          <li> <i class="logo"><img src="images/vip/invest_5.png" tppabs="https://xin/2.0/images/vip/invest_5.png" /></i> <span class="explain">债权转让，是信融财富针对VIP会员推出的提前收回本金和收益的功能。</span> </li>
          <!--生日礼金-->
          <li> <i class="logo"><img src="images/vip/invest_6.png" tppabs="https://xin/2.0/images/vip/invest_6.png" /></i> <span class="explain">生日礼金，是信融财富对VIP用户的回馈。VIP用户近一年内投资满5万元即可获得。</span> </li>
          <!--节日礼金-->
          <li> <i class="logo"><img src="images/vip/invest_7.png" tppabs="https://xin/2.0/images/vip/invest_7.png" /></i> <span class="explain">节日礼金，是信融财富对VIP用户的回馈。包括春节礼金、中秋礼金、女生节积分（限女性），VIP用户离节日前3个月内投资满5万元即可获得。</span> </li>
          <!--投资服务费-->
          <li> <i class="logo"><img src="images/vip/invest_8.png" tppabs="https://xin/2.0/images/vip/invest_8.png" /></i> <span class="explain">信融财富仅在投资人获得收益后收取一定比例的投资服务费（按照投资时个人账户等级对应的比例收取），信存宝的每日收益为实收收益。</span> </li>
          <!--日投资上限-->
          <li> <i class="logo"><img src="images/vip/invest_9.png" tppabs="https://xin/2.0/images/vip/invest_9.png" /></i> <span class="explain">日投资上限，VIP等级越高，日投资额度越大</span> </li>
          <!--投资赠积分-->
          <li> <i class="logo"><img src="images/vip/invest_10.png" tppabs="https://xin/2.0/images/vip/invest_10.png" /></i> <span class="explain">投资赠积分，是信融财富对VIP会员的回馈，每个账户当月单笔投资100万，可额外再获赠10万积分。VIP等级越高，获赠次数越多。</span> </li>
          <!--增值服务--> 
          <!--朵朵来电-->
          <li> <i class="logo"><img src="images/vip/service_1.png" tppabs="https://xin/2.0/images/vip/service_1.png" /></i> <span class="explain">朵朵来电，是信融财富新推出的免费通话工具，信融财富用户可与好友进行免费通话。VIP用户每月可获赠免费分钟数，VIP等级越高，获赠分钟数越多。</span> </li>
          <!--日提现上限-->
          <li> <i class="logo"><img src="images/vip/service_2.png" tppabs="https://xin/2.0/images/vip/service_2.png" /></i> <span class="explain">日提现上限，VIP等级越高，日提现额度越大。</span> </li>
          <!--充话费得积分-->
          <li> <i class="logo"><img src="images/vip/service_3.png" tppabs="https://xin/2.0/images/vip/service_3.png" /></i> <span class="explain">充话费得积分，是信融财富对VIP会员的回馈。每个账户首次充值话费100元以上(含100)，额外再赠送1000积分（每天每人上限500元）。</span> </li>
          <!--小积分抽大奖-->
          <li> <i class="logo"><img src="images/vip/service_4.png" tppabs="https://xin/2.0/images/vip/service_4.png" /></i> <span class="explain">小积分抽大奖，信融财富用户通过投资换取积分，进行抽奖，每1000积分可抽奖一次，100%中奖。VIP等级越高，抽奖次数越多。</span> </li>
          <!--积品汇折扣-->
          <li> <i class="logo"><img src="images/vip/service_5.png" tppabs="https://xin/2.0/images/vip/service_5.png" /></i> <span class="explain">积品汇，投资汇积分，兑换心仪品！积品汇折扣是您在积品汇使用积分兑换礼品时，将可享受对应等级的折扣价。</span> </li>
          <!--推荐奖励-->
          <li> <i class="logo"><img src="images/vip/service_6.png" tppabs="https://xin/2.0/images/vip/service_6.png" /></i> <span class="explain">推荐奖励，信融财富用户推荐好友注册并投资，即可获得被推荐人首笔投资金额一定比例的礼金奖励。</span> </li>
          <!--被推荐人升级购VIP奖-->
          <li> <i class="logo"><img src="images/vip/service_7.png" tppabs="https://xin/2.0/images/vip/service_7.png" /></i> <span class="explain">被推荐人升级/购VIP奖，是信融财富对VIP用户的回馈。VIP用户每推荐一个投资人，被推荐人VIP等级每升1级或付费开通VIP，推荐人根据自身VIP等级可获得相应的投资礼金。</span> </li>
          <!--借款特权--> 
          <!--资金变动提醒-->
          <li> <i class="logo"><img src="images/vip/borrow_1.png" tppabs="https://xin/2.0/images/vip/borrow_1.png" /></i> <span class="explain">账户资金变动提醒，是信融财富对VIP会员的回馈，当账户资金发生变动时（投资、回款等），用户第一时间收到短信通知，随时掌握账户情况。</span> </li>
          <!--提现费-->
          <li> <i class="logo"><img src="images/vip/borrow_2.png" tppabs="https://xin/2.0/images/vip/borrow_2.png" /></i> <span class="explain">普通用户每笔收取2元手续费，VIP会员每笔收取0～1元手续费。提现后赠送提现手续费用金额（不包含额外手续费）50%的投资礼金。充值后未投资的资金提现将收取额外0.5％手续费。</span> </li>
          <!--风险准备金-->
          <li> <i class="logo"><img src="images/vip/borrow_3.png" tppabs="https://xin/2.0/images/vip/borrow_3.png" /></i> <span class="explain">风险准备金是指信融财富平台在银行建立的独立资金账户，针对平台的无担保无抵押项目，逐笔提取一定比例的“计提准备金”，注入风险准备金账户中。当平台无担保无抵押的项目出现逾期或者违约时，将启用风险准备金进行逾期垫付。如风险准备金不足，可能造成投资人本金/利息损失。</span> </li>
          <!--借款额度提高奖
    <li>
      <i class="logo"><img src="images/vip/borrow_4.png" /></i>
      <span class="explain">每成功推荐一位好友注册并借款成功，借款人借款额度即可提高被推荐人首笔借款金额的百分之一。</span>
    </li>
    -->
        </ul>
      </div>
    </div>
    <!--popup end--> 
    <!--答对-->
    <div class="pop_ques" id="pop_right">
      <div class="inner">
        <h3>提示</h3>
        <span>恭喜您答对计算题奖励500积分!</span> <a href="javascript:location.reload()">确定</a> </div>
    </div>
    <!--答错-->
    <div class="pop_ques" id="pop_wrong">
      <div class="inner">
        <h3>提示</h3>
        <span>很抱歉，回答错误。</span> <a href="javascript:location.reload()">确定</a> </div>
    </div>
    <!--footer begin--> 
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
						url:'https://xin/v2/communication/free_consulation.jso',
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
		url:'https://xin/v2/login/in_session_data.jso',
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
 
    <!--footer end--> 
    <script type="text/javascript" src="js/www/vip.js" tppabs="https://xin/2.0/js/www/vip.js"></script> 
    <script type="text/javascript">
    //tabs init
    $("#tabsholder").tytabs({
        tabinit : 1,
        fadespeed : "fast"
    });

    //未登录状态   $("#login_box").show();
    //登录后为普通用户  $("#normal_box").show();PopupConfig.init();
    //登录后为VIP用户 
                   // PopupConfig.init();
                   // $("#vip_box").show();
                   // $("#vip_current").html("VIP1");
                   // $("#vip_upgrade_point").html("3.10万点");
                   // $("#vip_next").html("VIP2");
                   // $("#vip_deadline").html("2017-03-22");
                
    //计算题
    // $("#example").hide();
    // $("#question").show();
</script>
    <div  id="sidebar-login-box" style="display: none; ">
      <div class="wgt-dialog wgt-dialog-login" >
        <fieldset class="ui-form">
          <form id="rapid-login-form" method="post" action="https://xin/v2/login/login.jso">
            <h3 class="wgt-dialog-title">信融财富用户登录</h3>
            <div class="ui-form-line">
              <label for="username" class="ui-form-label">账　号：</label>
              <input type="text" name="username" id="rapid-userName" class="ui-form-input" maxlength="50" tabindex="1" placeholder="账户名 / Email / 手机号"/>
              <a href="views/account/register3.0.shtml.htm" tppabs="https://xin/2.0/views/account/register3.0.shtml" class="blue" target="_blank">注册账号</a> </div>
            <div class="ui-form-line">
              <label for="password" class="ui-form-label">密　码：</label>
              <input type="password" name="password" id="rapid-userPw" class="ui-form-input" maxlength="16" tabindex="2" placeholder="登录密码"/>
              <a href="views/account/back_password.shtml.htm" tppabs="https://xin/2.0/views/account/back_password.shtml" class="blue" target="_blank">忘记账号/密码？</a> </div>
            <div class="ui-form-line ui-form-captcha" id="captcha_view" style="display:none">
              <label for="rapid-captcha" class="ui-form-label">验证码：</label>
              <input type="text" id="rapid-captcha" name="captcha" class="ui-form-input" autocomplete="off" maxlength="4" tabindex="3" placeholder="验证码"/>
              <span id="rapid-captcha-placeholder" class="captcha-placeholder"><img src="" width='101' height='31' id='img-captcha' title='看不清楚？换一个' /></span>
              <input type="hidden" id="rapid-seed" name="seed" value=""/>
            </div>
            <div class="ui-form-line ui-form-action">
              <input  type="submit" class="ui-button ui-button-orange" style="width: 234px;height: 36px;line-height: 36px;" tabindex="4" value="登 录" />
              <em class="ui-tip"></em> <img src="images/Connect_logo_7.png" tppabs="https://xin/2.0/images/Connect_logo_7.png" onclick=" AA.RapidLogin.qqClick();" style="cursor:pointer; margin-left:8px;"></img> </div>
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
</body>
</html>
