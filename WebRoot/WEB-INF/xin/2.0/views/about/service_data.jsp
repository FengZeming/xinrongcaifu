<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信融财富</title>
<link href="../../css/about.css"  rel="stylesheet" type="text/css" />
<link href="../../css/service_data.css"  rel="stylesheet" type="text/css" />
<link href="../../css/basic.css"  rel="stylesheet" type="text/css" />
<link href="../../css/dialog.css"  rel="stylesheet" type="text/css" />
<link href="../../css/global.css"  rel="stylesheet" type="text/css" />
<link href="../../css/dialog-wbox.css"  rel="stylesheet" type="text/css" />

<script type="text/javascript" src="../../js/jquery-1.10.2.js" ></script>
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
<script type="text/javascript" src="../../../s/vendor/artDialog/jquery.artDialog.js" ></script>
<script type="text/javascript" src="../../js/tytabs.jquery.new.js" ></script>
<script type="text/javascript" src="../../js/jquery.imgscroll.min.js" ></script>
<script src="../../js/jquery-webox.js"  type="text/jscript"></script>
<script type="text/javascript" src="../../js/wbox.js" ></script>
<script type="text/javascript" src="../../js/vendor/echarts/build/dist/echarts.js" ></script>
<script type="text/javascript" src="../../js/vendor/animateNumber/jquery.animateNumber.js" ></script>
<script type="text/javascript" src="../../js/AA.base-min.js" ></script>
<script type="text/javascript" src="../../js/XR.base.js" ></script>
<script type="text/javascript" src="../../js/mod/login.js" ></script>
<script type="text/javascript" src="../../js/common.js" ></script>
<script type="text/javascript" src="../../js/date.js" ></script>
<script type="text/javascript" src="../../js/api/common_api.js" ></script>
<script type="text/javascript" src="../../js/api/user_api.js" ></script>
<script type="text/javascript" src="../../../webapp2.0/js/jquery.circliful.min.js" ></script>
</head>
<style>
.hmenu_nav{ position: fixed; z-index: 100; top: 0px; left:0px;}
.h-navhe{ width:100%; min-width:1100px; background:#fff; height:128px;}
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
    <div class="logo left PositionR"><a href="../../../index.htm" ><img src="../../images/logo.gif"  /></a><a href="shareholder.shtml.htm"  class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="../account/account_index.shtml.htm"  class="f-my" id="nav_my">我的账户</a> <a id="top_exit" href="javascript:AA.RapidLogin.loginout();" class="f_exit" style="display:none;">退出</a> <span class="h-login-reg h-login" style="display: none;"><i></i><a href="../../login2.0.html" class="flogin">登录</a><a href="../account/register4.0.shtml.htm"  class="freg">注册</a></span></div>
    <div class="clear"></div>
  </div>
  <div class="h_nav" id="hmenu_nav">
    <div class="main PositionR">
      <ul>
        <li><a href="../../../index.htm"  id="nav_index">首页</a></li>
        <li><a href="../../../invest.shtml.htm"  id="nav_invest">投资<i class="arrow"></i></a>
        <ul>
        <li><a href="../../calculator.html#finvest"  target="_blank">投资计算器</a></li>
        </ul>
        </li>
        <li><a href="../../action/xr_huahua/huahua.shtml.htm"  id="nav_huahua">信融花花<i class="arrow"></i><b class="hh_icon"><img src="../../images/hh_icon.png"  /></b></a>
          <ul>
          	<li><a href="../../action/xr_huahua/huahua.shtml.htm"  target="_blank">我要借款</a></li>
            <li><a href="../../calculator.html"  target="_blank">借款计算器</a></li>
          </ul>
        </li>
       
        <li><a href="invest_help.shtml.htm"  id="nav_invest_help">新手指引<i class="arrow"></i></a>
          <ul>
          	<li><a href="invest_help.shtml.htm"  target="_blank">投资帮助</a></li>
          	<li><a href="risk.shtml.htm"  target="_blank">风险控制</a></li>
            <li><a href="laws_regulations.shtml.htm#navLaws"  target="_blank">法律法规</a></li>
          
          </ul>
        </li>
        <li><a href="about.shtml.htm" id="nav_about">信息披露<i class="arrow"></i></a>
          <ul>
            <li><a href="about.shtml.htm"  id="nav_about_index">公司简介</a></li>
            <li><a href="team.shtml.htm" >团队介绍</a></li>
            <li><a href="service_data.shtml.htm" >运营数据</a></li>
          
            <li><a href="partner.shtml.htm" >合作机构</a></li>
            
          </ul>
        </li>
      </ul>
      <div class="nav_r"><a href="../../vip.html"  id="nav_vip">VIP特权</a></div>
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
<script type="text/javascript" src="../../js/wbox.js" ></script>

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
        	location.href="../account/account_settings.shtml-goAnswer=true.htm"/*tpa=https://xin/2.0/views/account/account_settings.shtml?goAnswer=true*/;
        });
        $('#wBox #close').unbind('click').bind('click',function(){
        	sessionStorage.setItem('afterAnswer',true);
        	wBox.close();
        })

	}
});

</script> 

<div class="h-navhe"></div>
<div class="wrapper">
	<div class="sections" id="sections">
		<!-- 平台数据总览 begin -->
		<div class="section section-1">
			<div class="content">
            <span class="sec-tips">注：数据统计截止至前一日，部分数据当日更新。</span>
				<div class="title title_animating">
					<h1>平台数据总览</h1>
					<i></i>
				</div>
				<!--
					累计交易总额		#all_money
					累计待偿金额		#all_retaining
					为投资人赚取的收益	#income_money
					累计用户人数		#all_user
					累计交易总笔数		#all_trade
					风险准备金			#risk_money
				-->
				<div class="section_detail detail_animating">
					<ul>
						<li>
							<img src="../../images/about/data/section1_1.png"  />
							<span><span id="all_money">--</span></span>
							<span>交易总额</span>
						</li>
						<li>
							<img src="../../images/about/data/section1_2.png"  />
							<span><span id="all_retaining">--</span></span>
							<span>待偿金额</span>
						</li>
						<li>
							<img src="../../images/about/data/section1_3.png"  />
							<span><span id="income_money">--</span></span>
							<span>为投资人赚取的收益</span>
						</li>
						<li>
							<img src="../../images/about/data/section1_4.png"  />
							<span><span id="all_user">--</span>人</span>
							<span>用户人数</span>
						</li>
						<li>
							<img src="../../images/about/data/section1_5.png"  />
							<span><span id="all_trade">--</span>笔</span>
							<span>累计交易总笔数</span>
						</li>
						<li>
							<img src="../../images/about/data/section1_6.png"  />
							<span><span id="risk_money">--</span></span>
							<span>风险准备金</span>
						</li>
					</ul>
					<div class="operating_time">
						<i></i>
						<!--
							运营时间		#operating_year
											#operating_day
											#operating_hour
											#operating_minute
						-->
						<span>已运营<span id="year" class="digit">--</span>年
									<span id="day" class="digit">--</span>天
									<span id="hours" class="digit">--</span>时
									<span id="minutes" class="digit">--</span>分
									<span id="seconds" class="digit">--</span>秒
						</span>
					</div>
				</div>
			</div>
		</div>
		<!-- 平台数据总览 end -->
		<!-- 项目信息 begin -->
		<div class="section section-2 bgM1">
			<div class="content">
				<div class="title">
					<h1>项目信息</h1>
					<i></i>
				</div>
				<div class="section_detail">
					<ul>
						<!--项目种类分布图-->
						<li id="product_type_box"></li>
						<!--项目期限分布图-->
						<li id="product_date_box"></li>
						<!--项目金额分布图-->
						<li id="product_money_box"></li>
						<!--用户成交金额分布图-->
						<li id="product_deal_money_box"></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 项目信息 end -->
		<!-- 项目成交量 begin -->
		<div class="section section-3 bgM2">
			<div class="content">
				<div class="title">
					<h1>项目成交量</h1>
					<i></i>
				</div>
				<div class="section_detail">
					<div id="tabsholder_1" class="tabsholder data_ms_02">
						<ul class="tabs">
							<li id="tab1" class="current">项目成交量</li>
							<li id="tab2">平台项目年化收益率走势</li>
							<li id="tab3">信存宝年化收益率走势</li>
						</ul>
						<div class="contents">
							<!--项目成交量-->
							<div id="content1" class="tabscontent current">
								
								<div class="data_select ms_left left">
						          <div class="black20"></div>
						          <span class="left t-title">年份</span>
						            <dl class="select">
						                <dt>2017年</dt>
						                <dd>
						                  <ul>
						                  	<li><a href="javascript:void(0)" data="2017" item="money">2017年</a></li>
						                  	<li><a href="javascript:void(0)" data="2016" item="money">2016年</a></li>
						                    <li><a href="javascript:void(0)" data="2015" item="money">2015年</a></li>
						                    <li><a href="javascript:void(0)" data="2014" item="money">2014年</a></li>
						                    <li><a href="javascript:void(0)" data="2013" item="money">2013年</a></li>
						                  </ul>
						                </dd>
						            </dl>
						            <!--
										年度累计成交额	有3个地方	$(".sections .section-3 .tabscontent .saleAllMoney")
						            -->
						            <span class="t-title total_deal">年度累计成交额 : <span class="saleAllMoney orange" id="saleAllMoney_view">--</span>万元</span>
						        </div>
						        <!--项目成交量图-->
						        <div id="product_month_money_box" class="chart_box">
						        </div>
						        <!--右边数据-->
						        <div class="product_deal_data right_data">
						        	<!--项目成交量数据
										累计已回款本金		#refund_capital
										累计已回款收益		#refund_profit
										昨日成交			#yesterday_deal
										收益中				#incoming
						        	-->
						        	<ul>
						        		<li>
						        			<span>累计已回款本金</span>
						        			<span id="refund_capital" class="data_show">--</span>
						        		</li>
						        		<li>
						        			<span>累计已回款收益</span>
						        			<span id="refund_profit" class="data_show">--</span>
						        		</li>
						        		<li>
						        			<span>昨日成交</span>
						        			<span id="yesterday_deal" class="data_show">--</span>
						        		</li>
						        		<li>
						        			<span>收益中</span>
						        			<span id="incoming" class="data_show">--</span>
						        		</li>
						        	</ul>
						        </div>
							</div>
							<!--平台项目年化收益率走势-->
							<div id="content2" class="tabscontent">
								
								<div class="data_select ms_left left">
						          <div class="black20"></div>
						          <span class="left t-title">年份</span>
						            <dl class="select">
						                <dt>2017年</dt>
						                <dd>
						                  <ul>
						                  	<li><a href="javascript:void(0)" data="2017" item="rate">2017年</a></li>
						                  	<li><a href="javascript:void(0)" data="2016" item="rate">2016年</a></li>
						                    <li><a href="javascript:void(0)" data="2015" item="rate">2015年</a></li>
						                    <li><a href="javascript:void(0)" data="2014" item="rate">2014年</a></li>
						                    <li><a href="javascript:void(0)" data="2013" item="rate">2013年</a></li>
						                  </ul>
						                </dd>
						            </dl>
						        </div>
						        <!--平台项目年化收益率走势图-->
						        <div id="product_month_rate_box" class="chart_box">
						        </div>
						        <!--右边数据-->
						        <div class="product_month_data right_data">
						        	<!--平台项目年化收益率走势数据
										平均年化收益率		#avg_year_rate
						        	-->
						        	<ul>
						        		<li>
						        			<span>平均年化收益率</span>
						        			<span id="avg_year_rate" class="orange">--</span>
						        		</li>
						        	</ul>
						        	
						        </div>
							</div>
							<!--信存宝年化收益率走势-->
							<div id="content3" class="tabscontent">
								
								<div class="data_select ms_xcb left">
						          <div class="black20"></div>
						            <dl class="select">
						                <dt>过去7日年化收益率（%）</dt>
						                <dd>
						                  <ul>
						                  	<li><a href="javascript:void(0)" data="7" item="xcb">过去7日年化收益率（%）</a></li>
	                    					<li><a href="javascript:void(0)" data="90" item="xcb">过去90日年化收益率（%）</a></li>
						                  </ul>
						                </dd>
						            </dl>
						        </div>
						        <!--信存宝年化收益率走势图-->
						        <div id="xcb_rate_box" class="chart_box">
						        	
						        </div>
						        <!--右边数据-->
						        <div class="xcb_rate_data right_data">
						        	<!--信存宝年化收益率走势数据
										今日可投份额		#available_money
										昨日万份收益		#per_tenthousand_profit
										累计创造收益		#xcb_all_profit
						        	-->
						        	<ul>
						        		<li>
						        			<span>今日可投份额</span>
						        			<span class="orange">><span id="available_money">--</span></span>
						        		</li>
						        		<li>
						        			<span>昨日万份收益</span>
						        			<span><span id="per_tenthousand_profit" class="orange">--</span>元</span>
						        		</li>
						        		<li>
						        			<span>累计创造收益</span>
						        			<span><span id="xcb_all_profit" class="orange">--</span>元</span>
						        		</li>
						        	</ul>
						        </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 项目成交量 end -->
		
		<!-- 用户数据 begin -->
		<div class="section section-4">
			<div class="content">
				<div class="title">
					<h1>用户数据</h1>
					<i></i>
				</div>
				<div class="section_detail">
					<div class="user_data_box">
						<!--用户数据
							人均累计投资金额		#per_capita_invest_money
							人均累计借款金额		#per_capita_borrow_money
							笔均投资金额			#per_portion_invest_money
							笔均借款金额			#per_portion_borrow_money
							投资人数量				#investor_amount
							借款人数量				#borrower_amount
						-->
						<ul class="user_data">
							<li>
								<img src="../../images/about/data/section4_1.png"  />
								<span>人均累计投资金额 : <span id="per_capita_invest_money" class="orange">--</span>&nbsp;元</span>
								<span>人均累计借款金额 : <span id="per_capita_borrow_money" class="orange">--</span>&nbsp;元</span>
							</li>
							<li>
								<img src="../../images/about/data/section4_2.png"  />
								<span>笔均投资金额 : <span id="per_portion_invest_money" class="orange">--</span>&nbsp;元</span>
								<span>笔均借款金额 : <span id="per_portion_borrow_money" class="orange">--</span>&nbsp;元</span>
							</li>
							<li>
								<img src="../../images/about/data/section4_3.png" />
								<span>投资人数量 : <span id="investor_amount" class="orange">--</span>&nbsp;人</span>
								<span>借款人数量 : <span id="borrower_amount" class="orange">--</span>&nbsp;人</span>
							</li>
						</ul>
						<!--用户数据图-->
						<div class="user_data_chart" id="user_data_chart">
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 用户数据 end -->
		<!-- 用户数据 begin -->
		<div class="section section-5">
			<div class="content">
				<div class="title">
					<h1>用户数据</h1>
					<i></i>
				</div>
				<div class="section_detail">
					<div id="tabsholder_3" class="tabsholder">
						<ul class="tabs" style="display: none;">
							<li id="tab6" class="current" style="width: 100%;">投资占比</li>
							<!-- <li id="tab7">借款占比</li> -->
						</ul>
						<div class="contents">
							<div id="content6" class="tabscontent current">
								<ul>
									<!--最大单投资余额占比图-->
									<li id="biggest_invest_rate_box"></li>
									<!--最大10户投资余额占比图-->
									<li id="top10_invest_rate_box"></li>
									<!--投资人基本特征图-->
									<li id="investor_featrue_box"></li>
								</ul>
							</div>
							<!-- <div id="content7" class="tabscontent">
								<ul>
									最大单借款余额占比图
									<li id="biggest_borrow_rate_box"></li>
									最大10户借款余额占比图
									<li id="top10_borrow_rate_box"></li>
									借款人基本特征图
									<li id="borrower_feature_box"></li>
								</ul>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 用户数据 end -->
		<!-- 用户地域分布情况 begin -->
		<div class="section section-6">
			<div class="content">
				<div class="title">
					<h1>用户地域分布情况</h1>
					<i></i>
				</div>
				<div class="section_detail">
					<div id="tabsholder_2" class="tabsholder">
						<ul class="tabs">
							<li id="tab4" class="current">投资金额</li>
							<li id="tab5">投资人数</li>
						</ul>
						<!--
							近一月新增注册用户数		#new_users
						-->
						<div class="new_users">近一月新增注册用户数 : <span id="new_users" class="orange">--</span>人</div>
						<div class="black10"></div>
						<div class="contents">
							<!--投资分布图-->
							<div id="content4" class="tabscontent current">
								<div class="left">
									<h6>TOP</h6>
									<!--
										投资分布排行		#area_invest_list
									-->
									<ul id="area_invest_list">
									</ul>
								</div>
								<!--投资分布地图-->
								<div id="area_invest_box" class="right">
									
								</div>
							</div>
							<!--借款分布图-->
							<div id="content5" class="tabscontent">
								<div class="left">
									<h6>TOP</h6>
									<!--
										借款分布排行		#area_borrow_list
									-->
									<ul id="area_user_list">
									</ul>
								</div>
								<!--借款分布地图-->
								<div id="area_user_box" class="right">
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 用户地域分布情况 end -->
		<!-- 信融花花风险数据 begin -->
		<div class="section section-7">
			<div class="content">
				<div class="title">
					<h1>信融花花风险数据</h1>
					<i></i>
				</div>
				<div class="section_detail">
					<h3 class="reminder">自2012年12月平台上线以来，<span class="orange">至今未出现过对投资人的逾期</span></h3>
					<div class="view_box">
						<!--信融花花风险数据
								逾期率 						#overDueMoneyRate_huahua
								坏账率 						#badRate_huahua
								累计逾期金额 				#overDueMoney_huahua
								累计坏账金额 				#badMoney_huahua
								逾期黑名单 					#overDuePeople_huahua
						-->
						<div class="view_1">
							<span>金额逾期率(%)</span>
							<span id="overDueMoneyRate_huahua">--</span>
							<img src="../../images/about/data/section7_1.png"  style="top:10px"/>
							<div style="position:absolute;bottom:-25px;right:82px;font-size:14px;color:#999">含金额坏账率</div>
						</div>
						<div class="view_2">
							<span>金额坏账率(%)</span>
							<span id="badRate_huahua">--</span>
							<img src="../../images/about/data/section7_2.png"  />
						</div>
						<div class="view_3">
							<span>累计逾期金额(元)</span>
							<span id="overDueMoney_huahua">--</span>
							<img src="../../images/about/data/section7_3.png"  style="top:10px"/>
							<div style="position:absolute;bottom:-25px;right:82px;font-size:14px;color:#999">含坏账金额</div>
						</div>
						<div class="view_4">
							<span>累计坏账金额(元)</span>
							<span id="badMoney_huahua">--</span>
							<img src="../../images/about/data/section7_4.png"  />
						</div>
						<div class="view_5">
							<span>逾期黑名单(人)</span>
							<span><span id="overDuePeople_huahua">--</span><a href="../../blacklist.html" >(查看黑名单)</a></span>
							<img src="../../images/about/data/section7_5.png"  />
						</div>
					</div>
					<h4 class="reminder">注：信融花花风险数据默认逾期M3以上进入逾期黑名单，默认连续逾期M3以上视为逾期，默认连续逾期M6以上为坏账。
					</h4>
				</div>
			</div>
		</div>
		<!-- 信融花花风险数据 end -->

		<!--信融花花数据总计 begin-->
		<div class="section sec_huahua_sum">
			<div class="content">
				<div class="title">
					<h1>信融花花数据总计</h1>
					<i></i>
				</div>
				<div class="section_detail">
					<div class="info">
						<span>累计逾期代偿笔数 : <span id="daichang_amount">--</span>笔</span>
						<span>历史项目逾期率 : <span id="history_overdue_rate">--</span>%</span>
					</div>
					<div class="overdue_rate_con">
						<!--分级逾期率-->
						<div class="overdue_rate_box" id="overdue_rate_sort_box">
							
						</div>
						<h4 class="reminder">注：默认连续逾期M3以上视为逾期，默认连续逾期M6以上为坏账。</h4>
					</div>
				</div>
			</div>
		</div>
		<!--信融花花数据总计 end-->
		<!--平台风险数据总计 begin-->
		<div class="section sec_stage_sum">
			<div class="content">
				<div class="title">
					<h1>平台风险数据总计</h1>
					<i></i>
				</div>
				<div class="section_detail">
					<div class="info">
						<span>累计逾期代偿金额 : <span id="daichang_money">--</span>元</span>
						<span>历史项目逾期金额 : <span id="history_overdue_money">--</span>元</span>
						<i>自2012年12月平台上线以来，<i>至今未出现过对投资人的逾期</i></i>
					</div>
					<div class="stage_data_con">
						<ul class="stage_data_box">
							<!--逾期率-->
							<li>
								<div id="overdue_rate_box" data-dimension="240" data-text="0" data-info="金额逾期率<br/>(含金额坏账率)" data-width="24" data-fontsize="34" data-percent="0" data-fgcolor="#4adbb0" data-bgcolor="#e0e0e0"></div>
								<span class="box_info_more">累计逾期金额 : <span id="total_overdue_money">--</span>元<br/><span style="line-height:1">(含累计坏账金额)</span></span>
							</li>
							<!--坏账率-->
							<li>
								<div id="bad_money_rate_box" data-dimension="240" data-text="0" data-info="金额坏账率" data-width="24" data-fontsize="34" data-percent="0" data-fgcolor="#f37370" data-bgcolor="#e0e0e0"></div>
								<span class="box_info_more">累计坏账金额 : <span id="total_bad_money">--</span>元</span>
							</li>
							<!--逾期项目数-->
							<li>
								<div id="overdue_amount_box" data-dimension="240" data-text="0" data-info="项目逾期率" data-width="24" data-fontsize="34" data-percent="0" data-fgcolor="#7bc1ee" data-bgcolor="#e0e0e0"></div>
								<span class="box_info_more">逾期项目数 : <span id="overdue_product">--</span>笔</span>
							</li>
						</ul>
						<div class="explain"><a href="service_data_explain.html"  target="_blank">部分数据名词释义</a></div>
					</div>
				</div>
			</div>
		</div>
		<!--平台风险数据总计 end-->

		<!-- 用户列表 begin --
		<div class="section section-9 bgM1">
			<div class="content">
				<div class="title">
					<h1>用户列表</h1>
					<i></i>
				</div>
				<div class="section_detail">
					<div id="tabsholder_4" class="tabsholder">
						<ul class="tabs">
							<li id="tab8" class="current">待收投资人列表</li>
							<li id="tab9">待还借款人列表</li>
							<li id="tab10">逾期未还款列表</li>
							<li id="tab11">坏账未还款列表</li>
						</ul>
						<div class="contents">
							<!--待收投资人列表--
							<div id="content8" class="tabscontent current">
								<table id="content8_table" border="0" cellpadding="0" cellspacing="0">
									<thead>
										<tr>
											<th style="width:135px">排名</th>
											<th style="width:135px">用户名</th>
											<th style="width:270px">累计投资金额</th>
											<th style="width:270px">累计获取收益</th>
											<th style="width:270px">待收金额</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td><td>xin</td><td>2000万元</td><td>2000万元</td><td>2000万元</td>
										</tr>
										<tr>
											<td>2</td><td>xin</td><td>2000万元</td><td>2000万元</td><td>2000万元</td>
										</tr>
										
									</tbody>
								</table>
								<!--待收投资人列表页数切换--
								<div id="content8_pagination" class="pagination"></div>
							</div>
							<!--待还借款人列表--
							<div id="content9" class="tabscontent">
								<table id="content9_table" border="0" cellpadding="0" cellspacing="0">
									<thead>
										<tr>
											<th style="width:135px">排名</th>
											<th style="width:135px">用户名</th>
											<th style="width:270px">待还金额</th>
											<th style="width:270px">占比例</th>
											<th style="width:270px">平均期限</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td><td>xin</td><td>2000万元</td><td>2000万元</td><td>2000万元</td>
										</tr>
										<tr>
											<td>2</td><td>xin</td><td>2000万元</td><td>2000万元</td><td>2000万元</td>
										</tr>
									</tbody>
								</table>
								<!--待还借款人列表页数切换--
								<div id="content9_pagination" class="pagination"></div>
							</div>
							<!--逾期未还款列表--
							<div id="content10" class="tabscontent">
								<table id="content10_table" border="0" cellpadding="0" cellspacing="0">
									<thead>
										<tr>
											<th style="width:135px">姓名</th>
											<th style="width:300px">身份证</th>
											<th style="width:215px">逾期金额</th>
											<th style="width:215px">逾期次数</th>
											<th style="width:215px">状态</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>xin</td><td>123456789012345678</td><td>2000万元</td><td>2000万元</td><td>2000万元</td>
										</tr>
										<tr>
											<td>xin</td><td>123456789012345678</td><td>2000万元</td><td>2000万元</td><td>2000万元</td>
										</tr>
									</tbody>
								</table>
								<!--逾期未还款列表页数切换--
								<div id="content10_pagination" class="pagination"></div>
							</div>
							<!--坏账未还款列表--
							<div id="content11" class="tabscontent">
								<table id="content11_table" border="0" cellpadding="0" cellspacing="0">
									<thead>
										<tr>
											<th style="width:135px">姓名</th>
											<th style="width:300px">身份证</th>
											<th style="width:215px">坏账金额</th>
											<th style="width:215px">坏账次数</th>
											<th style="width:215px">状态</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td><td>123456789012345678</td><td>2000万元</td><td>2000万元</td><td>2000万元</td>
										</tr>
										<tr>
											<td>2</td><td>123456789012345678</td><td>2000万元</td><td>2000万元</td><td>2000万元</td>
										</tr>
									</tbody>
								</table>
								<!--坏账未还款列表页数切换--
								<div id="content11_pagination" class="pagination"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 用户列表 end -->
	</div>
</div>
<!--右侧菜单-->
<ul id="section-select" class="section-select">
</ul>
<div  id="sidebar-login-box" style="display: none; ">
<div class="wgt-dialog wgt-dialog-login" >
    <fieldset class="ui-form">
        <form id="rapid-login-form" method="post" action="https://xin/v2/login/login.jso">
            <h3 class="wgt-dialog-title">信融财富用户登录</h3>
            <div class="ui-form-line">
                <label for="username" class="ui-form-label">账　号：</label>
                <input type="text" name="username" id="rapid-userName" class="ui-form-input" maxlength="50" tabindex="1" placeholder="账户名 / Email / 手机号"/>
                <a href="../account/register4.0.shtml.htm"  class="blue" target="_blank">注册账号</a>
            </div>
            <div class="ui-form-line">
                <label for="password" class="ui-form-label">密　码：</label>
                <input type="password" name="password" id="rapid-userPw" class="ui-form-input" maxlength="16" tabindex="2" placeholder="登录密码"/>
                <a href="../account/back_password.shtml.htm"  class="blue" target="_blank">忘记账号/密码？</a>
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
                <img src="../../images/Connect_logo_7.png"  onclick=" AA.RapidLogin.qqClick();" style="cursor:pointer; margin-left:8px;"></img>
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
            <h1><img src="../../images/c-login1.gif"  width="68" height="93" /><span><i class="icondagou"></i>登录成功</span></h1>
            </div>
            </div>
        </form>
    </fieldset>
</div> 

</div>
<script type="text/javascript" src="../../js/rsa.js" ></script>
<script type="text/javascript" src="../../../webapp2.0/js/wbox.js" ></script>

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
<script type="text/javascript" src="../../js/channel.js" ></script>
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
<script type="text/javascript" src="../../js/www/about/service_data2.js" ></script>
</body>
</html>