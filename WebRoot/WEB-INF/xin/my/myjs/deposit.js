$(function(){
	
	$(document).ready(function(){
		
		var juedui=$("#juedui").val();
		 $.ajax({
	         "url":juedui+"/shengfen.json",
	         "type":"post",	       
	         "dataType":"json",
	         "success":callBack
	     });
	  
	     function callBack(data){
	    	
	    	$("#sf").html(data.name1);
	    	$("#sf1").html(data.bankName);
	    	$("#sf2").html(data.banknumber1);
	    	$("#tixianyueE").html(data.yuE);
	     };
	     
	    /* $("#money").blur(function(){
	    	 var i=$("#money").val();
	    	 alert(12+i);
	    	 
	     });*/
	     
	     
	
	}) //页面加载时结束   
 
})


