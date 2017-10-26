$(function(){
	$("#logIn").click(function(){
		var a = $.trim($("#basePath").val());
		alert(a);
        var username = $.trim($("#username").val());
        var password = $.trim($("#password").val());
         if(username == ""){
             $("#index_error").html("请输入用户名");
            return false;
        }else if(password == ""){
            $("#index_error").html("请输入密码");
             return false;
         }
         //ajax去服务器端校验
         var data= "username="+username+"&password="+password;
        //调ajax
        $.ajax({            
            url:a+"/login",
            data:data,
            type:"POST",
            dataType:"json",
            success: function(data){
            			var i=data;
            			if(i=="true")
                    {
            				$(".login-name").show();
                       $("#index_username_show").html(username); 
                    }
                    else
                    {
                       $("#index_error").html("用户名或密码错误");
                    }
            
                }
            
            });
        
        });
})
	

 