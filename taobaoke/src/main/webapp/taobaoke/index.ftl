<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${request.contextPath}/ico/favicon.ico">
    <title>爱生活，爱购物</title>
    <link href="${request.contextPath}/bootstart/css/bootstrap.min.css" rel="stylesheet">
    <link href="${request.contextPath}/css/navbar-fixed-top.css" rel="stylesheet">
    
    <script src="${request.contextPath}/js/jquery/jquery-1.11.1.min.js"></script>
    <script src="${request.contextPath}/js/count.js"></script>
    <script src="${request.contextPath}/bootstart/js/bootstrap.min.js"></script>
    <script src="${request.contextPath}/bootstart/js/ie10-viewport-bug-workaround.js"></script>
    <script src="${request.contextPath}/bootstart/js/ie-emulation-modes-warning.js"></script>
    <script src="${request.contextPath}/js/taobaoke/index.js"></script>
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="http://www.dovip.top/">dovip.top-首页</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active" onclick="activeLi(this,'');"><a href="${request.contextPath}/">9.9包邮</a></li>
            <li onclick="activeLi(this,'');"><a href="javascript:void(0);" onclick="getType(1);">品牌特卖</a></li>
            <li onclick="activeLi(this,'');"><a href="javascript:void(0);" onclick="getType(2);">精品疯抢季</a></li>
            <li onclick="activeLi(this,'');"><a href="javascript:void(0);" onclick="getType(10);">天天特价</a></li>
            <li class="dropdown" onclick="activeLi(this,'delete');">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">更多精品 <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="javascript:void(0);" onclick="getType(3);">20封顶</a></li>
                <li><a href="javascript:void(0);" onclick="getType(4);">卷皮精选</a></li>
                <!--<li><a href="#">Something else here</a></li>-->
                <li class="divider"></li>
                <!--<li class="dropdown-header">Nav header</li>-->
                <li><a href="#">更多单品敬请期待...</a></li>
                <!--<li><a href="#">One more separated link</a></li>-->
              </ul>
            </li>
          </ul>
          <!--
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">Default</a></li>
            <li><a href="../navbar-static-top/">Static top</a></li>
            <li class="active"><a href="./">Fixed top <span class="sr-only">(current)</span></a></li>
          </ul>
          -->
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">
      <div class="jumbotron" id="content">
      	<#if frameUrls ??>
      		<#if '${frameUrls?size}'== '0'>
  				<h2>暂无数据....</h2>
  			</#if>
      		<#list frameUrls as url>
		      	<p>${url.tName!''}：</p>
		        <iframe width="100%" align="center" height="${url.height!1750}" id="mainFrame" name="mainFrame" frameborder="0" scrolling="no" src="${url.tUrl!''}"></iframe> 
		        <h3>&nbsp;</h3>
	        </#list>
	    <#else>
	    	<h2>暂无数据....</h2>
        </#if>
      </div>
    </div> <!-- /container -->
    
    
    <!-- 模板start -->
    <div style="display:none;" id="contentTmplate">
    	<p></p>
        	<iframe width="100%" align="center" height="" id="mainFrame" name="mainFrame" frameborder="0" scrolling="no" src=""></iframe> 
        <h3>&nbsp;</h3>
    </div>
    <!-- 模板end -->
  </body>
  
  <#include "template/scroll.ftl"> 
</html>
