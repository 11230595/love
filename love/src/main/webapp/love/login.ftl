<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${request.contextPath}/ico/favicon.ico">

    <title>dovip.top-用户登陆</title>

    <!-- Bootstrap core CSS -->
    <link href="${request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <script src="${request.contextPath}/bootstrap/js/ie-emulation-modes-warning.js"></script>


    <!-- Custom styles for this template -->
    <link href="${request.contextPath}/bootstrap/css/signin.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">

      <form class="form-signin" style="min-height:500px;">
        <h2 class="form-signin-heading">请登陆</h2>
        <label for="inputEmail" class="sr-only">邮箱/用户名</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="邮箱/用户名" required autofocus>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="密码" required>
        <div class="alert alert-danger" id="hint" style="display:none;">用户名或密码错误</div>
        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="login();">登陆</button>
        <button class="btn btn-lg btn-danger btn-block" type="button" onclick="window.location.href='${request.contextPath}/user/zc'">注册</button>
      </form>

	 <!-- 地脚信息 -->
  	 <#include "template/foot.ftl">
    </div> <!-- /container -->
    
    <script type="text/javascript" src="${request.contextPath}/js/jquery/jquery-1.11.1.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${request.contextPath}/bootstrap/js/ie10-viewport-bug-workaround.js"></script>
  </body>
  
<script>
//登陆
function login(){
	$("#hint").hide(); //隐藏提示框
	var userCode = $("#inputEmail").val();
	var password = $("#inputPassword").val();
	if(userCode == ""){
		alert("请您输入用户名");
		return;
	}
	if(password == ""){
		alert("请您输入密码");
		return;
	}
	
	$.post("../user/signin",{
		"userCode":userCode,
		"password":password,
		"returnUrl":"${returnUrl!''}"
	},function(data){
		if(data.respCode == 0){
			window.location.href=data.returnUrl;
		}else{
			$("#hint").show();
		}
	});
}

</script>
</html>
