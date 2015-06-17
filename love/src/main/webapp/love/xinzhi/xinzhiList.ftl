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

    <title>dovip.top-挑选信纸</title>

    <!-- Bootstrap core CSS -->
    <link href="${request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <script src="${request.contextPath}/bootstrap/js/ie-emulation-modes-warning.js"></script>

    <!-- Custom styles for this template -->
    <link href="${request.contextPath}/bootstrap/css/carousel.css" rel="stylesheet">
  </head>
<!-- NAVBAR
================================================== -->
  <body>
  	<!-- 头信息 -->
    <#include "../template/head.ftl">

    <!-- 包裹层start -->
	<div style="width:90%;margin:8% 0 0 ${margin!0}%">
      <div class="row featurette">
      	<h2>&nbsp;&nbsp;挑选信纸生成网站</h2>
        <div class="col-md-8">
          <table class="table table-hover">
		   <caption>请挑选信纸</caption>
		   <thead>
		      <tr>
		         <th style="width:60%">信纸</th>
		         <th style="width:40%">操作</th>
		      </tr>
		   </thead>
		    <#list xinZhiUrls as xinZhi>
		      <tr>
		         <td><img style="width:150px" src="${request.contextPath}${xinZhi!''}"></td>
		         <td><a href="${request.contextPath}/xinzhi/create/${xinZhi_index}">使用该信纸生成</a></td>
		      </tr>
	      	</#list>
		   <tbody>
		  </table>
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
  </body>
</html>
