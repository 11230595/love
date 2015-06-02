<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>qq登陆</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101223876" data-redirecturi="http://dovip.aliapp.com/login/qqLogin.jsp" charset="utf-8" ></script>
<script type="text/javascript">  
var paras = {};  
var userCode;
QC.api("get_user_info", paras)  
    .success(function(s){//成功回调  
    	userCode = s.data.nickname;
        alert("获取用户信息成功！当前用户昵称为："+s.data.nickname);  
    })  
    .error(function(f){//失败回调  
        alert("获取用户信息失败！");  
    })  
    .complete(function(c){//完成请求回调  
        alert("获取用户信息完成！");  
        window.open('<%=request.getContextPath()%>/user/otherSignin?userCode='+ userCode, "_blank");
    });  
</script>  
</head>
<body>
</body>
</html>