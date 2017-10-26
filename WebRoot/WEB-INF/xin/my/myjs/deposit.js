$(function(){
	
	$(document).ready(function(){ 
		
		
		
		 $.ajax({
	         "url":"<%=request.getContextPath()%>/shengfen.json",
	         "type":"post",	       
	         "dataType":"json",
	         "success":callBack
	     });s
	  
	     function callBack(data){
	    	alert(data);
	    	$("#sf").html(data.name1);
	    	$("#sf1").html(data.bankName);
	    	$("#sf2").html(data.banknumber1);
	     }
	     
	 })    
    
	        
	
})


