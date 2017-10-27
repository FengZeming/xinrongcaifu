$(function(){
	var a = $.trim($("#basePath").val());//当前路径
	$(".errorMessage").css({"color":"red"});
	$(".errorMessage").show();
	
	
	getSeriesListAjax();//初始化系列菜单
	//系列选项改变时调用最大最小融资期限ajax
	$("#selectSeires").change(function(){
		getProjectfinancingtimeAjax();
	})

	
	//Ajax调用系列菜单方法
	function getSeriesListAjax(){
		
		$.ajax({
			type:"post",
			url:a+"getSeriesListAjax",
			async:true,
			dataType:"JSON",
			success:function(data){
				for(var i=0;i<data.length;i++){
					$("#selectSeires").append("<option value='"+data[i].id+"'>"+data[i].seriesname+"</option>");
				}
				
			}
		});
	}
	
	//Ajax调用最大最小融资期限和还款期限方法
	function getProjectfinancingtimeAjax(){
		var seriesId=$("#selectSeires").val();
		$.ajax({
			type:"post",
			url:a+"getProjectfinancingtimeAjax",
			async:true,
			data:"id="+seriesId,
			dataType:"JSON",
			success:function(data){
				$("#selectFinacingTime").val(data[0]);
				$("#selectFinacingTime").attr({min:data[0],max:data[1]});
				$("#selectProjectduration").val(data[2]);
				$("#selectProjectduration").attr({min:data[2],max:data[3]})
				$("#inputExpectedfinancingamount").val(data[4]);
				$("#inputExpectedfinancingamount").attr({min:data[4],max:data[5]});
			},
			error:function(){
				$("#selectFinacingTime").val(1);
				$("#selectFinacingTime").attr({min:1,max:1});
				$("#selectProjectduration").val(1);
				$("#selectProjectduration").attr({min:1,max:1});
				$("#inputExpectedfinancingamount").val(0);
				$("#inputExpectedfinancingamount").attr({min:0,max:0});
			}
		});
	}

	
})