$(function(){
	
	
    
	  $(document).ready(function(){ 
		  
		  $("#queren").click(function(){
			var juedui= $("#juedui").val();
			
			alert(juedui);
		
		       // $("#money").blur(function(){
			  //alert(${pageContext.request.contextPath})
			var money=$("#money").val();
			alert(money);
			 $.ajax({
		         url:juedui+"/money.json",
		         type:"post",
		         data:"money="+money,
		         dataType:"json",
		         success:callBack
		     });
		  
		     function callBack(data){
		    	 alert("成功");
		    	  var i=data
			     
			       if(i=="true"){
			    	   window.location.href=juedui+"/xin/my/true";
			       }else{
			    	   window.location.href=juedui+"/xin/my/false";
			       }
			    	 
		     }
			  
		  })//失去焦点的事件
		  
	  })  //页面加载的结束 
	            
	
})


