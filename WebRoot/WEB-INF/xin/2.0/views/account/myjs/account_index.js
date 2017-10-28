$(function(){
	var a = $.trim($("#basePath").val());
	
	//点击信存宝-账户余额存入，弹出对话框
	$("#saveAcount").click(function(){
		$(".cuenrumain").show();
	})
	//点击信存宝-账户余额转出，弹出对话框
	$("#rolloutAcount").click(function(){
		$(".zhuanchumain").show();
	})
	//点击叉关闭 信存宝
	$("#closecuenrumain").click(function(){
		$(".cuenrumain").hide();
	})
	$("#closezhuanchumain").click(function(){
		$(".zhuanchumain").hide();
	})
	
	
	//信存宝存入-ajax
	$("#saveAcountSubmit").click(function(){
		var addmoney=$("#crMoney").val();
		var password=$("#crPass").val();
		$.ajax({
			type:"post",
			url:a+"submitSaveXincunbaoAccount",
			async:true,
			data:"addmoney="+addmoney+"&password="+password,
			dataType:"JSON",
			success:function(data){
				if(data=="true"){
					alert("正确");
					location.href="/xinrong/xin/2.0/views/account/account_index.shtml.htm";
				}else if(data=="error"){
					alert("错误");
				}else if(data=="noAcounts"){
					alert("密码错误");
				}else if(data=="noEnoughMoney"){
					alert("资金账户金额不足");
				}
			}
		});
	})
	
	//信存宝提现-ajax
	$("#zcSub").click(function(){
		var rolloutmoney=$("#zcMoney").val();
		var password=$("#zcPass").val();
		$.ajax({
			type:"post",
			url:a+"submitRolloutXincunbaoAccount",
			async:true,
			data:"rolloutmoney="+rolloutmoney+"&password="+password,
			dataType:"JSON",
			success:function(data){
				alert(data);
				if(data=="true"){
					alert("正确");
					location.href="/xinrong/xin/2.0/views/account/account_index.shtml.htm";
				}else if(data=="error"){
					alert("错误");
				}else if(data=="noAcounts"){
					alert("密码错误");
				}else if(data=="noEnoughMoney"){
					alert("账户金额不足");
				}
			}
		});
	})
	
})