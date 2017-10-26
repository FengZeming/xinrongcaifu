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
<link href="../../css/basic.css"  rel="stylesheet" type="text/css" />
<link href="../../css/guide.css"  rel="stylesheet" type="text/css" />
<link href="../../css/dialog.css"  rel="stylesheet" type="text/css" />
<link href="../../css/global.css"  rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/var.js" ></script>
<script type="text/javascript" src="../../js/jquery-1.10.2.min.js" ></script>
<script type="text/javascript" src="../../../s/js/AA.base-min.js" ></script>
<script type="text/javascript" src="../../js/XR.base.js" ></script>
<script type="text/javascript" src="../../../s/vendor/artDialog/jquery.artDialog.js" ></script>
<script type="text/javascript" src="../../../s/vendor/artDialog/dialog_ex.js" ></script>
<script type="text/javascript" src="../../js/mod/login.js" ></script>
<script type="text/javascript" src="../../js/mod/phone.js" ></script>
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
    <div class="logo left PositionR"><a href="../../../index.htm" ><img src="../../images/logo.gif"  /></a><a href="shareholder.shtml.htm"  class="logo_font">上市公司系</a></div>
    <div class="right top_my"><a href="../account/account_index.shtml.htm"  class="f-my" id="nav_my">我的账户</a> <a id="top_exit" href="javascript:AA.RapidLogin.loginout();" class="f_exit" style="display:none;">退出</a> <span class="h-login-reg h-login" style="display: none;"><i></i><a href="../../login2.0.html"  class="flogin">登录</a><a href="../account/register4.0.shtml.htm"  class="freg">注册</a></span></div>
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
        <li><a href="about.shtml.htm"  id="nav_about">信息披露<i class="arrow"></i></a>
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

<!--header end-->
<div class="LineBorder ConMain"></div>
<!--center-->
<div class="security_nav">
<div class="main">
<ul>
<li class="cur"><a href="invest_help.shtml.htm" >投资帮助</a></li>
<li><a href="risk.shtml.htm" >风险控制</a></li>
<li><a href="laws_regulations.shtml.htm#navLaws" >法律法规</a></li>
</ul>
</div>
</div>
<div class="help_banner"></div>
<div class="help_summary">
<div class="main">
<dl>
<dt><img src="../../images/guide/12.jpg"  /></dt>
<dd><h1><span>关于信融财富</span></h1>深圳市信融财富投资管理有限公司运营信融财富平台，公司成立于2012年3月，由知名金融行业、互联网企业以及第三方支付企业的资深人士联合创办，注册资本6904.55万元人民币，实收资本5704.55万元人民币，总部位于深圳，拥有完整的产品、研发、风控、财务以及客服等职能体系，是一家具备优秀的自主研发能力的金融创新型企业。</dd>
<div class="clear"></div>
</dl>
</div>
</div><!--end-->
<div class="help_tips main" style="display:none;">
<div class="tips_left left">
<dl>
<dt><img src="../../images/guide/13.png"  /></dt>
<dd><h1>安全</h1><p>投资项目均由第三方担保</p>
<p>或风险准备金垫付</p>
<p>合作方本金收益担保</p></dd>
<div class="clear"></div>
</dl>
<dl>
<dt><img src="../../images/guide/14.png"  /></dt>
<dd><p class="black10"></p><h1>省心</h1><p>无需关注过多细节</p>
<p>投资流程简单明了</p>
</dd>
<div class="clear"></div>
</dl>
<dl>
<dt><img src="../../images/guide/15.png"  /></dt>
<dd><p class="black20"></p><h1>收益可观</h1><p>12%~16.8%预期年化收益率</p>
</dd>
<div class="clear"></div>
</dl>
</div>
<div class="tips_right right">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<thead>
  <tr>
    <th width="150" align="center">产品</th>
    <th width="145" align="center">年化收益率</th>
    <th width="145" align="center">风险级别</th>
    <th align="center">资金流动性</th>
  </tr>
  </thead>
  <tbody>
  <tr class="bg">
    <td align="center">一年定期存款</td>
    <td align="center">3.5%</td>
    <td align="center"><img src="../../images/guide/16.png"  /></td>
    <td align="center"><img src="../../images/guide/17.png"  /></td>
  </tr>
  <tr>
    <td align="center">一年期国债</td>
    <td align="center">3.85%</td>
    <td align="center"><img src="../../images/guide/16.png"  /></td>
    <td align="center"><img src="../../images/guide/17.png"  /></td>
  </tr>
  <tr class="bg">
    <td align="center">银行理财产品</td>
    <td align="center">4-6%</td>
    <td align="center"><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /></td>
    <td align="center"><img src="../../images/guide/17.png"  /></td>
  </tr>
  <tr>
    <td align="center">开放式基金</td>
    <td align="center">不定</td>
    <td align="center"><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /></td>
    <td align="center"><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /></td>
  </tr>
  <tr class="bg">
    <td align="center">股票</td>
    <td align="center">不定</td>
    <td align="center"><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /></td>
    <td align="center"><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /><img src="../../images/guide/17.png"  /></td>
  </tr>
  <tr class="bg01">
    <td align="center">信·系列项目</td>
    <td align="center">12-16.8%</td>
    <td align="center"><img src="../../images/guide/18.png"  /></td>
    <td align="center"><img src="../../images/guide/18.png"  /><img src="../../images/guide/18.png"  /><img src="../../images/guide/18.png"  /></td>
  </tr>
  </tbody>
</table>
</div>
<div class="clear"></div>
</div><!--end-->
<div class="help_project">
<div class="main">
<a name="f-project"></a>
<h1 class="guide_title"><span>信 · 项目简介</span></h1>
<div class="project_pic"><img src="../../images/guide/19.jpg" /></div>
<div class="project_list">
<dl>
<dt><i class="icon01"></i></dt>
<dd><h2>信·无忧贷</h2>为债权转让类融资项目，主要面向已经拥有高优质债权、但需要融资周转的企业/个人。该类项目的债权本身一般已具备良好的还款来源。第三方公司通过对高优质债权凭证的严格审核来确保该融资项目的可靠性。</dd>
<div class="clear"></div>
</dl>
<dl>
<dt><i class="icon02"></i></dt>
<dd><h2>信·优企贷</h2>主要面向部分无优质债权，但自身资质优良的企业/个人。该类企业具有一定数额的固定资产，且自身经营状况良好、收益可观。第三方公司一般通过让其提供的反担保措施来确保该融资项目的可靠性。</dd>
<div class="clear"></div>
</dl>
<dl>
<dt><i class="icon03"></i></dt>
<dd><h2>信·赎楼贷</h2>该类项目主要为在房产交易过程中，需要临时还清银行购房贷款、以便获得房产完全处置权的房主所提供的融资服务。第三方公司通过对该房产项下的所有他项权利的公正委托方式来确保该融资项目的可靠性。</dd>
<div class="clear"></div>
</dl>
<dl>
<dt><i class="icon04"></i></dt>
<dd><h2>信·消费贷</h2>该项目主要面向小额贷款公司或类小额贷款公司。信·消费贷主要解决分散、小额融资需求，无需抵押、门槛低，灵活度高。</dd>
<div class="clear"></div>
</dl>
<dl>
<dt><i class="icon05"></i></dt>
<dd><h2>信·精选贷</h2>该项融资服务主要面向平台精选的投资人，前提是借款人在信融财富拥有充足的待还资金，平台通过冻结其债权即债权抵押来确保该融资项目的可靠性。</dd>
<div class="clear"></div>
</dl>
<dl>
<dt><i class="icon06"></i></dt>
<dd><h2>信·质抵贷</h2>该类项目面向高资产净值人群，因资金投入到长期金融产品中导致无法解决临时资金使用需求。通过将资产（债券、票据、贵金属等）抵押或质押给信融财富，获得资金。</dd>
<div class="clear"></div>
</dl>
<dl>
<dt><i class="icon07"></i></dt>
<dd><h2>信·优资贷</h2>主要面向自身资质优良的个人。经审核此类融资方具有一定数额的优质资产且信用良好，具备良好还款来源，故平台启用风险准备金模式以增加平台投资人资金可靠性。</dd>
<div class="clear"></div>
</dl>

<dl>
<dt><i class="icon08"></i></dt>
<dd><h2>信·车贷</h2>该类项目主要面向个人信用良好的车主。借款人将自购车辆进行抵押或质押获得贷款，借款资金用于个人消费。根据借款人需要，借款期限1-36个月不等。</dd>
<div class="clear"></div>
</dl>
</div>
</div>
</div><!--end-->
<div class="help_sm main">
<h1 class="guide_title"><span>轻松三步，收益到手</span></h1>
</div><!--end-->
<div class="help_font">
<div class="main">
<ul>
<li><div class="font-box"><h1>第一步</h1><p><img src="../../images/guide/22.png"  /></p><h2>注册及认证<p>账户注册、手机和实名认证</p></h2></div></li>
<li class="w01">&gt;</li>
<li><div class="font-box"><h1>第二步</h1><p><img src="../../images/guide/23.png"  /></p><h2>账户充值<p>通过网银进行账户充值</p></h2></div></li>
<li class="w01">&gt;</li>
<li><div class="font-box"><h1>第三步</h1><p><img src="../../images/guide/24.png"  /></p><h2>投资<p>选择合适的投资项目<br />
签署电子合同，委托划款<br />
坐享收益</p></h2></div></li>
</ul>
<div class="clear"></div>
<div class="m-font">
<h3>投资费用说明</h3>
投资人可免费注册，并免费进行邮箱、手机认证以及账户充值。信融财富仅在投资人获得收益后收取一定比例的投资服务费。
<h3>资金划转</h3>
在完成电子合同签署后，信融财富将按照投资人的委托，将投资人账户资金划转至融资方账户。信融财富不会将投资人在信<br />
融财富账户内的资金作任何非由投资人指定的用途。投资人在信融财富账户内的资金不计利息。
<h3>风险提示</h3>
投资人风险<br />
<p style="padding-top:10px;">· 融资方违约<br />
信融财富虽已联合第三方公司对融资方进行资质和债权审核，但融资方逾期还款风险依然存在，需投资人留意。</p>
<h3>担保风险</h3>
第三方公司存在被依法撤销、破产或发生其它导致无法履行垫付责任的可能，此时第三方公司将无法继续履行垫付责任。此时若融资方不能按时足额偿还本息，投资人将面临无法收回本金和收益的风险。
</div>
<div class="font-sub"><a href="../account/register4.0.shtml.htm"  target="_blank" class="sub02">立即注册</a></div>
</div>
</div>
<!--center end--> 
<!--footer--> 
<div class="footer_box">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a href="about.shtml.htm"  target="_blank">关于我们</a></h2><p><a href="team.shtml.htm"  target="_blank">团队介绍</a></p><p><a href="xr_history.shtml.htm"  target="_blank">发展历程</a></p><p><a href="xr_credit.shtml.htm"  target="_blank">资质荣誉</a></p><p><a href="partner.shtml.htm"  target="_blank">合作机构</a></p></li>
<li><h2><a href="help.shtml.htm"  target="_blank">帮助中心</a></h2><p><a href="guide/guide1.shtml.htm"  target="_blank">新手指引</a></p><p><a href="help.shtml-tab=tab10.htm"  target="_blank">投资攻略</a></p><p><a href="javascript:if(confirm('http://bbs.xin.com/forum-49-1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xin.com/forum-49-1.html'" target="_blank">意见反馈</a></p></li>
<li><h2><a href="about.shtml.htm"  target="_blank">信息中心</a></h2><p><a href="activitysum.shtml.htm"  target="_blank">信融点滴</a></p><p><a href="javascript:if(confirm('http://bbs.xin.com/forum.php  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.xin.com/forum.php'"  target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a href="../../vip.html"  target="_blank">VIP特权</a></p><p><a href="../../../action/jf.htm"  target="_blank">抽奖</a></p></li>
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
<ul class="weix_box"><b></b><li><img src="../../../s/img/w02.jpg"  width="100"><h4>关注服务号</h4></li><li><img src="../../../s/img/w05.jpg"  width="100"><h4>关注订阅号</h4></li><li><img src="../../../s/img/w06.jpg"  width="100"><h4>微信客服-小薇</h4></ul>
</li>
<li class="fb02"><a href="javascript:if(confirm('http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://crm2.qq.com/page/portalpage/wpa.php?uin=4007779888&f=1&ty=1&aty=0&a=&from=5'"  title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><img src="../../images/qq.png"  width="120"><h4>QQ号：4007779888</h4></li>
</ul></li>
<li class="fb03"><a href="javascript:if(confirm('http://weibo.com/u/2719695463?profile_ftype=1&is_all=1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://weibo.com/u/2719695463?profile_ftype=1&is_all=1#_0'"  target="_blank" title="微博"><i class="AllIcon icon03"></i></a></li>
</ul>
</div>
</div>
<div class="footer_app right">
  <img src="../../../s/img/w07.jpg"  width="122" class="bimg" /><h2>下载手机客户端<i class="AllIcon icon01"></i> <i class="AllIcon icon02"></i></h2> </div>
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
<div class="footer_font main"><p> <a href="../../../about/privacy.htm"  target="_blank">隐私保护申明</a> 　|　 <a href="../../../about/agreement.htm"  target="_blank">服务协议</a>　 |　 粤ICP备12020226号</p>Copyright xin.com All Rights Reserved   信融财富投资管理有限公司</div>
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



</body>
</html>