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
    <link href="css/basic.css"  rel="stylesheet" type="text/css"/>
    <link href="css/calculator.css"  rel="stylesheet" type="text/css"/>
    <!--<script>if(top.location!=self.location){top.location.replace(self.location);}</script>
<script>if('https:' != location.protocol){location = location.href.replace('http:','https:');}</script>-->
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->
<!-- <script type="text/javascript" src="/2.0/js/jquery-1.10.2.min.js"></script> -->
<!-- <script type="text/javascript" src="js/jquery-1.4.2.js" ></script> -->
<script type="text/javascript" src="js/jquery-1.10.2.js" ></script>
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
    <script type="text/javascript" src="js/calculator.js" ></script>
</head>
<script>
    <!--模拟select列表-->
    $(function () {
        $(".select").each(function () {
            var s = $(this);
            var z = parseInt(s.css("z-index"));
            var dt = $(this).children("dt");
            var dd = $(this).children("dd");
            var _show = function () {
                dd.slideDown(200);
                dt.addClass("cur");
                s.css("z-index", z + 1);
            };   //展开效果
            var _hide = function () {
                dd.slideUp(200);
                dt.removeClass("cur");
                s.css("z-index", z);
            };    //关闭效果
            dt.click(function () {
                dd.is(":hidden") ? _show() : _hide();
            });
            dd.find("a").click(function () {
                dt.html($(this).html());
                $(dt).attr("data", $(this).attr("data"));
                _hide();
            });     //选择效果（如需要传值，可自定义参数，在此处返回对应的“value”值 ）
            $("body").click(function (i) {
                !$(i.target).parents(".select").first().is(s) ? _hide() : "";
            });
        });

        $XR_Calculator.init();
    });
    <!--借款计算结果展开和隐藏-->
    $(document).ready(function () {
        $(".cal_borrowing h1").click(function () {
            if ($(this).next().is(":hidden")) {
                $(".cal_borrowing .calculator_box").slideDown();
                $(".cal_borrowing h1").addClass("curbg");
            }
            else {
                $(".cal_borrowing .calculator_box").slideUp();
                $(".cal_borrowing h1").removeClass("curbg");
            }
        });
		
		var url=document.location.href;
		if(url.match("finvest")){
			$(".cal_borrowing .calculator_box").hide();
			$(".cal_borrowing h1").removeClass("curbg");
		};
    });

</script>
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
    <div class="logo left PositionR"><a href="../index.htm" ><img src="images/logo.gif"  /></a><a href="views/about/shareholder.shtml.htm"  class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="views/account/account_index.shtml.htm"  class="f-my" id="nav_my">我的账户</a> <a id="top_exit" href="javascript:AA.RapidLogin.loginout();" class="f_exit" style="display:none;">退出</a> <span class="h-login-reg h-login" style="display: none;"><i></i><a href="login2.0.html"  class="flogin">登录</a><a href="views/account/register4.0.shtml.htm"  class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="../index.htm"  id="nav_index">首页</a></li>
        <li><a href="../invest.shtml.htm"  id="nav_invest">投资<i class="arrow"></i></a>
        <ul>
        <li><a href="calculator.html#finvest"  target="_blank">投资计算器</a></li>
        </ul>
        </li>
        <li><a href="action/xr_huahua/huahua.shtml.htm"  id="nav_huahua">信融花花<i class="arrow"></i><b class="hh_icon"><img src="images/hh_icon.png"  /></b></a>
          <ul>
          	<li><a href="action/xr_huahua/huahua.shtml.htm"  target="_blank">我要借款</a></li>
            <li><a href="calculator.html"  target="_blank">借款计算器</a></li>
          </ul>
        </li>
        <li><a href="views/about/invest_help.shtml.htm"  id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="views/about/invest_help.shtml.htm"  target="_blank">投资帮助</a></li>
          	<li><a href="views/about/risk.shtml.htm"  target="_blank">风险控制</a></li>
            <li><a href="views/about/laws_regulations.shtml.htm#navLaws"  target="_blank">法律法规</a></li>
          </ul>
        </li>
        <li><a href="views/about/about.shtml.htm" id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="views/about/about.shtml.htm" id="nav_about_index">公司简介</a></li>
            <li><a href="views/about/team.shtml.htm" >团队介绍</a></li>
            <li><a href="views/about/service_data.shtml.htm" >运营数据</a></li>
            <li><a href="views/about/partner.shtml.htm" >合作机构</a></li>
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="vip.html"  id="nav_vip">VIP特权</a></div>
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
<script type="text/javascript" src="js/wbox.js" ></script>
<link rel="stylesheet" href="css/dialog-wbox.css" >
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

<div class="black25"></div>
<div class="main calculator_wrap">
    <!--计算器-->
    <h1 class="cal_title"><span>计算器</span></h1>
    <div class="calculator_input">
        <dl>
            <dt>金额：</dt>
            <dd>
                <input name="investMoney" type="text" class="c_input" value="1000"/>
                <span class="t-f">元</span>
                <p class="f-tips">请输入<span class="orange">大于100</span>的整数</p>
                <p class="f-tips" style="display: none">您输入的整数过大</p>
            </dd>
        </dl>
        <dl>
            <dt>账户等级：</dt>
            <dd>
                <dl  id="vipRankSelect" class="select">
                    <dt id="vipRank" data="1">VIP1</dt>
                    <dd>
                        <ul>
                            <li><a href="javascript:void(0)" data="0">普通用户</a></li>
                            <li><a href="javascript:void(0)" data="1">VIP1</a></li>
                            <li><a href="javascript:void(0)" data="2">VIP2</a></li>
                            <li><a href="javascript:void(0)" data="3">VIP3</a></li>
                            <li><a href="javascript:void(0)" data="4">VIP4</a></li>
                            <li><a href="javascript:void(0)" data="5">VIP5</a></li>
                            <li><a href="javascript:void(0)" data="6">VIP6</a></li>
                            <li><a href="javascript:void(0)" data="7">VIP7</a></li>
                            <li><a href="javascript:void(0)" data="8">VIP8</a></li>
                            <li><a href="javascript:void(0)" data="9">VIP9</a></li>
                        </ul>
                    </dd>
                    <div class="clear"></div>
                </dl>
                <p id="vip-f-tips" class="f-tips">请选择<span class="orange">用户等级</span></p>
            </dd>
        </dl>
        <dl>
            <dt>期限：</dt>
            <dd>
                <input name="deadline" type="text" class="c_input" value="12"/>
                <span class="t-f">个月</span>
                <p class="f-tips">请输入<span class="orange">1~48</span>之间的任意整数</p>
            </dd>
        </dl>
        <dl>
            <dt>年化利率：</dt>
            <dd>
                <input name="yearRate" type="text" class="c_input" value="13.8"/>
                <span class="t-f">%</span>
                <p class="f-tips">请输入<span class="orange">1~20</span>之间的数字,最高保留小数点后<span class="orange">2</span>位</p>
            </dd>
        </dl>
        <div class="black15"></div>
        <div class="c_sub"><a id="calculatorSubmit" href="javascript:void(0)" class="sub02"><span>计  算<span
                class="countdown"></span></span></a></div>
    </div>
    <!--借款计算结果-->
    <div class="cal_borrowing">
        <h1 class="cal_title curbg"><span>借款计算结果</span><i class="">&gt;</i></h1>
        <div class="calculator_box">
            <!--结果-->
            <div class="box_results">
                <h2>借款计算结果<span class="f-tips">单位：元</span></h2>
                <h3><p>借款总成本</p><span id="loanTotalCost">216.31</span></h3>
                <ul>
                    <li><p>借款利息</p><span id="loanInterest">76.31</span></li>
                    <li class="bor"><p>融资服务费</p><span id="manageTax">120.00</span></li>
                    <div class="clear"></div>
                </ul>
            </div>
            <span class="left f-tips">*风险准备金：
                <span id="riskReserve" class="orange">20.00</span>元
                <span class="icon01">
                    <p class="infobox">
                        按借款本金计提，普通用户5%，VIP1为2%，VIP2为1%，VIP3-9免准备金
                          <b><img src="images/bicon.png"  width="6" height="13"></b>
                    </p>
                </span>
            </span>
            <span class="right f-tips"><span id="loanGrowPointBlock">成长值约+<span id="loanGrowPoint">3240</span>点</span> 　积分奖励+<span
                    id="loanScore">2200</span>分</span>
            <div class="black15"></div>
            <!--借款还款计划表-->
            <div class="box_results">
                <h2>借款还款计划表<span class="f-tips">等额本息还款</span></h2>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                    <tr>
                        <th>期数</th>
                        <th>本金</th>
                        <th>利息</th>
                        <th>月还款金额</th>
                    </tr>
                    </thead>
                    <tbody id="loanPlan">
                    <tr class="bg">
                        <td>1</td>
                        <td>78.19</td>
                        <td>11.50</td>
                        <td>89.69</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>79.09</td>
                        <td>10.60</td>
                        <td>89.69</td>
                    </tr>
                    <tr class="bg">
                        <td>3</td>
                        <td>80.00</td>
                        <td>9.69</td>
                        <td>89.69</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>80.92</td>
                        <td>8.77</td>
                        <td>89.69</td>
                    </tr>
                    <tr class="bg">
                        <td>5</td>
                        <td>81.85</td>
                        <td>7.84</td>
                        <td>89.69</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>82.80</td>
                        <td>6.89</td>
                        <td>89.69</td>
                    </tr>
                    <tr class="bg">
                        <td>7</td>
                        <td>83.75</td>
                        <td>5.94</td>
                        <td>89.69</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>84.71</td>
                        <td>4.98</td>
                        <td>89.69</td>
                    </tr>
                    <tr class="bg">
                        <td>9</td>
                        <td>85.69</td>
                        <td>4.00</td>
                        <td>89.69</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>86.67</td>
                        <td>3.02</td>
                        <td>89.69</td>
                    </tr>
                    <tr class="bg">
                        <td>11</td>
                        <td>87.67</td>
                        <td>2.02</td>
                        <td>89.69</td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>88.66</td>
                        <td>1.06</td>
                        <td>89.72</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--收益计算结果-->
    <div class="cal_earnings">
        <h1 class="cal_title"><span>收益计算结果</span></h1>
        <div class="calculator_box">
            <!--结果-->
            <div class="box_results">
                <h2>收益计算结果<span class="f-tips">单位：元</span></h2>
                <ul>
                    <li><p>到期收益总额</p><span id="totalIncome">76.31</span></li>
                    <li class="bor"><p>实收收益总额</p><span id="actualIncome">70.15</span></li>
                    <div class="clear"></div>
                </ul>
            </div>
            <span class="left f-tips">*投资服务费：<span id="serviceTax" class="orange">6.16</span>元
                <span class="icon01">
                  <p class="infobox">
                        普通用户收取投资收益的10%，VIP会员收取0%～8%
                      <b><img src="images/bicon.png"  width="6" height="13"></b>
                  </p>
                </span>
            </span>
            <span class="right f-tips"><span id="investGrowPointBlock">成长值约+<span
                    id="investGrowPoint">3240</span>点</span> 　积分奖励+<span id="investScore">3300</span>分</span>
            <div class="black15"></div>
            <!--借款还款计划表-->
            <div class="box_results">
                <h2>收益回款计划表<span class="f-tips"><select name="investRepayType"><option value="0">等额本息回款</option><option
                        value="1">按月付息回款</option><option value="2">到期一次性回款</option></select></span></h2>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                    <tr>
                        <th>期数</th>
                        <th>回款金额</th>
                        <th>本金</th>
                        <th>收益</th>
                        <th>本金+收益</th>
                        <th>服务费</th>
                    </tr>
                    </thead>
                    <tbody id="investPlan">
                    <tr class="bg">
                        <td>1</td>
                        <td>88.77</td>
                        <td>78.19</td>
                        <td>11.50</td>
                        <td>89.69</td>
                        <td>0.92</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>88.84</td>
                        <td>79.09</td>
                        <td>10.60</td>
                        <td>89.69</td>
                        <td>0.85</td>
                    </tr>
                    <tr class="bg">
                        <td>3</td>
                        <td>88.91</td>
                        <td>80.00</td>
                        <td>9.69</td>
                        <td>89.69</td>
                        <td>0.78</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>88.98</td>
                        <td>80.92</td>
                        <td>8.77</td>
                        <td>89.69</td>
                        <td>0.71</td>
                    </tr>
                    <tr class="bg">
                        <td>5</td>
                        <td>89.06</td>
                        <td>81.85</td>
                        <td>7.84</td>
                        <td>89.69</td>
                        <td>0.63</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>89.13</td>
                        <td>82.80</td>
                        <td>6.89</td>
                        <td>89.69</td>
                        <td>0.56</td>
                    </tr>
                    <tr class="bg">
                        <td>7</td>
                        <td>89.21</td>
                        <td>83.75</td>
                        <td>5.94</td>
                        <td>89.69</td>
                        <td>0.48</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>89.29</td>
                        <td>84.71</td>
                        <td>4.98</td>
                        <td>89.69</td>
                        <td>0.40</td>
                    </tr>
                    <tr class="bg">
                        <td>9</td>
                        <td>89.37</td>
                        <td>85.69</td>
                        <td>4.00</td>
                        <td>89.69</td>
                        <td>0.32</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>89.44</td>
                        <td>86.67</td>
                        <td>3.02</td>
                        <td>89.69</td>
                        <td>0.25</td>
                    </tr>
                    <tr class="bg">
                        <td>11</td>
                        <td>89.52</td>
                        <td>87.67</td>
                        <td>2.02</td>
                        <td>89.69</td>
                        <td>0.17</td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>89.63</td>
                        <td>88.66</td>
                        <td>1.06</td>
                        <td>89.72</td>
                        <td>0.09</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--常见问题-->
    <div class="calculator_faq">
        <h1 class="cal_title"><span>常见问题</span></h1>
        <dl>
            <dt><i>Q</i>什么是等额本息？</dt>
            <dd><i>A</i>等额本息是指在还款期内，借款人每月偿还同等数额的借款（包括本金和利息）。因计算中可能存在余数除不尽，最后一期还款金额与之前略有不同。</dd>
        </dl>
        <dl>
            <dt><i>Q</i>借款费用包括哪些？</dt>
            <dd><i>A</i>借款费用包括利息（按借款期限不同年利率在9%-13.8%之间）、融资服务费1%/月、风险准备金（按借款本金计提，普通用户5%，VIP1为2%，VIP2为1%，VIP3-9免准备金）。融资服务费与风险准备金在筹款成功后一次性扣除，利息在每个月还款时还给投资人。
            </dd>
        </dl>
        <dl>
            <dt><i>Q</i>还款需要注意什么？</dt>
            <dd><i>A</i>请确保在还款日前一天账户余额不小于当日应还款金额，系统将在账户中自动扣除以完成还款。</dd>
        </dl>
        <dl>
            <dt><i>Q</i>关于收益计算器？</dt>
            <dd><i>A</i>收益计算器计算的是理论上的预期收益，由于受节假日影响，持有日期会略有不同，具体收益以投资后的实际收益为准。
                收益计算器中的实收收益，不包含提现时收取的费用，普通用户每笔收取5元手续费，VIP会员每笔收取0~3元手续费，提现手续费收取规则请查看<a href="vip.html"  class="blue"
                                                                                      target="_blank">VIP会员特权</a>。
            </dd>
        </dl>
        <dl>
            <dt><i>Q</i>什么是投资服务费？</dt>
            <dd><i>A</i>信融财富仅在投资人获得收益后收取一定比例的投资服务费（按照投资时个人账户等级对应的比例收取）,普通用户收取投资收益的10%，VIP会员收取0%～8%，投资服务费的收取规则请查看<a
                    href="vip.html"  class="blue" target="_blank">VIP会员特权</a>。
            </dd>
        </dl>
        <dl>
            <dt><i>Q</i>等额本息项目和按月付息项目如遇到节假日顺不顺延？</dt>
            <dd><i>A</i>等额本息项目遇节假日延期回款，但是每一期都不计算顺延；<br />按月付息项目遇节假日延期回款，只有最后一期会计算顺延。</dd>
        </dl>
    </div>
</div>
<div class="black25"></div>
<!--footer-->
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="views/about/about.shtml.htm"  target="_blank">关于我们</a></h2><p><a href="views/about/team.shtml.htm"  target="_blank">团队介绍</a></p><p><a href="views/about/xr_history.shtml.htm"  target="_blank">发展历程</a></p><p><a href="views/about/xr_credit.shtml.htm"  target="_blank">资质荣誉</a></p><p><a href="views/about/partner.shtml.htm"  target="_blank">合作机构</a></p></li>
<li><h2><a href="views/about/help.shtml.htm"  target="_blank">帮助中心</a></h2><p><a href="views/about/guide/guide1.shtml.htm"  target="_blank">新手指引</a></p><p><a href="views/about/help.shtml-tab=tab1.htm"  target="_blank">问题答疑</a></p><p><a href="views/about/help.shtml-tab=tab10.htm"  target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xin.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xin.com/forum-49-1.html'" target="_blank">意见反馈</a></p></li>
<li><h2><a href="views/about/about.shtml.htm"  target="_blank">信息中心</a></h2><p><a href="views/about/xr_announcement.shtml.htm"  target="_blank">平台公告</a></p><p><a href="views/about/media_report.shtml.htm"  target="_blank">媒体报道</a></p><p><a href="views/about/activitysum.shtml.htm"  target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xin.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xin.com/forum.php'" target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="vip.html"  target="_blank">VIP特权</a></p><p><a href="../gift.htm"  target="_blank">积品汇</a></p><p><a href="../action/jf.htm"  target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><img src="../s/img/w02.jpg"  width="100"><h4>关注服务号</h4></li><li><img src="../s/img/w05.jpg"  width="100"><h4>关注订阅号</h4></li><li><img src="../s/img/w06.jpg"  width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'"  title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><img src="images/qq.png"  width="120"><h4>QQ号：4007779888</h4></li>
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
<li><a target="_blank" href="javascript:if(confirm('http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://szcert.ebs.org.cn/33a832e2-fa27-42e2-b593-f8eca324fd86'"  title="深圳市市场监督管理局企业主体身份公示"><i class="icon01"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=xin&zoneoff=&lang=zh_CN'"  title="信融财富是中国首批引入VeriSign 256位SSL加密的融资理财平台。您的隐私及个人资料安全已受最高级别的保护。"><i class="icon03"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.itrust.org.cn/home/index/rz_certifi/wm/RZ2017082401'"  title="中国信用企业"><i class="icon02"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('https://search.szfw.org/cert/l/CX20140805008628008716  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://search.szfw.org/cert/l/CX20140805008628008716'"  title="诚信网站"><i class="icon04"></i></a></li>
<li><a title="腾讯云安全认证"><i class="icon05"></i></a></li>
<li><a target="_blank" href="javascript:if(confirm('http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://v.pinpaibao.com.cn/authenticate/cert/?site=xin&at=business'"  title="安全联盟认证网站"><i class="icon06"></i></a></li>
</ul>
</div>
<div class="clear"></div>
<div class="footer_font main"><p> <a href="../about/privacy.htm"  target="_blank">隐私保护申明</a> 　|　 <a href="../about/agreement.htm"  target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright xin.com All Rights Reserved   信融财富投资管理有限公司</div>
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

<script type="text/javascript" src="js/channel.js" ></script>
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
	    		G_ENV_VAR.IsS_CHECKED_EMAIL=result.isAuthEmail==0?false:true;
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
</body>
</html>