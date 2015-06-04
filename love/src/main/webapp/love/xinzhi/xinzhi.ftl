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

    <title>该模板有dovip.top提供</title>

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
    
    <!-- 包裹层start -->
	<div style="width:80%;margin:1% 0 0 ${margin!0}%">
      <div class="row featurette">
        <div class="item" name="item">
          <img class="second-slide" src="${request.contextPath}/images/xinzhi/x${index!0}.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption" style="text-align:left;top: 28%;left:${margin!0}%;color:#000;">
	              <p>&nbsp;</p>
	              <p><input type="text" size="20%" class="input" value="${template.uName!''}" disabled maxlength="20"/><p>
	              <#list contents as content>
	              	<p><input type="text" value="${content!''}" size="35%" disabled class="input"/><p>
	              </#list>
	              <p style="margin-left:28%"><input type="text" size="10%" class="input" value="${template.mName!''}"/><p>
            </div>
          </div>
        </div>
      </div>
	</div>
	<!-- 包裹层end -->
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
