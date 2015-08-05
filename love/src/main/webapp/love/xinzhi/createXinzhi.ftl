<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="zhoudong">
    <meta name="keywords" content="表白，表白网站，网站生成，创意表白网站,dovip.top" />
	<meta name="description" content="dovip.top是一个专门生成表白类网站的网站" />
    
    <link rel="icon" href="${request.contextPath}/ico/favicon.ico">

    <title>开口示爱-使用信纸生成网站</title>

    <!-- Bootstrap core CSS -->
    <link href="${request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <script src="${request.contextPath}/bootstrap/js/ie-emulation-modes-warning.js"></script>

    <!-- Custom styles for this template -->
    <link href="${request.contextPath}/bootstrap/css/carousel.css" rel="stylesheet">
    
	<style>
	.input:focus{outline:none;}
	.input{
		border-bottom: #c6c6c6 1px solid;
	    border-top-style: none;
	    border-right-style: none;
	    border-left-style: none;
	    background-color: transparent;
	}
	</style>
	<script>
    	var ROOT = '${request.contextPath}';
    </script>
  </head>
<!-- NAVBAR
================================================== -->
  <body>
  	<!-- 头信息 -->
    <#include "../template/head.ftl">
	<form action="" class="form-horizontal"  role="form" id="f">
	<input type="hidden" name="userId" value="${user.userId!''}">
    <input type="hidden" name="userCode" value="${user.userCode!''}">
    <input type="hidden" name="tempNum" value="${index!0}">
	
    <!-- 包裹层start -->
	<div style="width:80%;margin:8% 0 0 ${margin!0}%">
      <div class="row featurette">
      	<h2>使用信纸生成网站</h2>
      	<p class="lead">
	      	<div class="input-group" style="width:39%;">
	      		<span class="input-group-addon">域名</span>
	        	<span class="input-group-addon"><code>${url!''}i/</code></span>
	         	<input type="text" required id="webCode" name="webCode" class="form-control" onblur="checkWebCode(this);" placeholder="如：lisi">
	      	</div>
	      	<div class="alert alert-danger" id="hint" style="display:none;">该域名已经被注册！</div>
      	</p>
        <div class="item" name="item">
          <img class="second-slide" src="${request.contextPath}/images/xinzhi/x${index!0}.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption" style="text-align:left;top: 32%;left:15%;color:#000;">
	              <p>&nbsp;</p>
	              <p><input type="text" id="uName" name="uName" size="20%" class="input" placeholder="亲爱的" maxlength="8"/><p>
	              <p><input type="text" id="content1" name="content" size="35%" class="input" maxlength="17"/><p>
	              <p><input type="text" id="content2" name="content" size="35%" class="input" maxlength="17"/><p>
	              <p><input type="text" name="content" size="35%" class="input" maxlength="17"/><p>
	              <p><input type="text" name="content" size="35%" class="input" maxlength="17"/><p>
	              <p><input type="text" name="content" size="35%" class="input" maxlength="17"/><p>
	              <p><input type="text" name="content" size="35%" class="input" maxlength="17"/><p>
	              <p><input type="text" name="content" size="35%" class="input" maxlength="17"/><p>
	              <p><input type="text" name="content" size="35%" class="input" maxlength="17"/><p>
	              <p style="margin-left:24%"><input type="text" id="mName" name="mName" size="10%" class="input" placeholder="爱你的" maxlength="8"/><p>
            </div>
          </div>
        </div>
      </div>
      <br>
      <p class="help-block">建议您预览后生成</p>
      <p class="lead">
	  	<a class="btn btn-default" href="javascript:void(0);" onclick="checkForm(0);" role="button">去预览 &raquo;</a>
	  	<a class="btn btn-default" href="javascript:void(0);" onclick="checkForm(1);" role="button">生成</a>
	  </p>
	</div>
	<!-- 包裹层end -->
	</form>
      <hr class="featurette-divider">
      <!-- /END THE FEATURETTES -->


      <!-- 地脚信息 -->
  	  <#include "../template/foot.ftl">

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="${request.contextPath}/js/jquery/jquery-1.11.1.min.js"></script>
    <script src="${request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="${request.contextPath}/bootstrap/js/holder.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${request.contextPath}/bootstrap/js/ie10-viewport-bug-workaround.js"></script>
    <!-- 把js写入文件 -->
    <script src="${request.contextPath}/love/js/xinzhiCreate.js"></script>
  </body>
</html>
