$(function(){
	var a = $.trim($("#basePath").val());
	
	//展示到期收益和回款时间ajax
	$("#slider_amount").change(function(){
		var id=$("#loan_title").attr("attr");
		var money=$(this).val();
		
		$.ajax({
			type:"post",
			url:"getProfixAjax",
			async:true,
			dataType:"JSON",
			data:"money="+money+"&id="+id,
			success:function(data){
				$("#totalInterest").html(data[0]);
				$("#ptime").html(data[1]);
			}
		});
	})
	
	
	//点击立即投资
	$("#investSubmit").click(function(){
		$("#wgt-dialog-invest-two-wrapper").show();
		$("#do_invest_two_money").html($("#slider_amount").val());
		$("#do_invest_dlg_total_interest").html($("#totalInterest").html());
	})
	
	//关闭立即投资
	$("#closeInvest").click(function(){
		$("#wgt-dialog-invest-two-wrapper").hide();
	})
	
	//点击对话框确认投资
	$("#do_invest_two_sub").click(function(){
		var projectid=$("#loan_title").attr("attr");//用户id
		var investmoney=$("#do_invest_two_money").html();//投资金额
		var password=$("#do_invest_two_tradepass").val();//交易密码
		$("#wgt-dialog-invest-two-wrapper").hide();
		
		$.ajax({
			type:"post",
			url:a+"commitInvest",
			async:true,
			dataType:"JSON",
			data:"projectid="+projectid+"&investmoney="+investmoney+"&password="+password,
			success:function(data){
				if(data=="true"){
					alert("投资成功");
				}else if(data=="none"){
					alert("用户和交易密码不匹配");
				}else if(data=="noEnoughMoney"){
					alert("账户金额不足");
				}else if(data=="error"){
					alert("未知错误");
				}
			}
		});
	})
})