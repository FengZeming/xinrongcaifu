$(function(){
	$("#errorMessage").css({"color":"red"});
	getSeriesListAjax();
	
	//Ajax调用下拉菜单方法
	function getSeriesListAjax(){
		$.ajax({
			type:"post",
			url:"getSeriesListAjax",
			async:true,
			dataType:"JSON",
			success:function(data){
				for(var i=0;i<data.length;i++){
					$("#selectSeires").append("<option value='"+data[i].id+"'>"+data[i].seriesname+"</option>");
				}
				
			}
		});
	}
})