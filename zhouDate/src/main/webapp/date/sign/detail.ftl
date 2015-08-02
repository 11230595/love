<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${request.contextPath}/ico/favicon.ico">
    <title>农历阳历互转，星座</title>
    <meta name="keywords" content="星座，农历阳历互转，闰年计算，日期计算器，天数计算，时间间隔计算" />
	<meta name="description" content="星座，农历阳历互转，闰年计算，日期计算器，天数计算，小时计算，间隔计算，时间间隔计算" />
    
    <link href="${request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${request.contextPath}/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <link href="${request.contextPath}/css/navbar-fixed-top.css" rel="stylesheet">
    
    <script src="${request.contextPath}/js/jquery/jquery-1.11.1.min.js"></script>
    <script src="${request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    
    <style>
    	pre {
			white-space: pre-wrap;
			word-wrap: break-word;
			}
    </style>
  </head>

  <body style="min-height: 0px;">
	<#include "../template/head.ftl" ><!-- 头 -->
	    <!-- 主体开始 -->
    <div class="container">
    <h3>${name!''}</h3>
      	<pre style="width:100%;">
    		<#include "pages/${code!'0'}.ftl" ><!-- 主体 -->
    	</pre>
    </div> <!-- /container -->
    <!-- 主体结束 -->
    <#include "../template/foot.ftl" ><!-- 脚 -->
    
    <script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
    <script src="${request.contextPath}/date/js/index.js"></script>
  </body>
</html>
