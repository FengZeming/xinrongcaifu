$(function(){
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
	
})