<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${request.contextPath}/ico/favicon.ico">
    <title>日期计算</title>
    <meta name="keywords" content="日期计算，天数计算，时间间隔计算" />
	<meta name="description" content="日期计算，天数计算，小时计算，间隔计算，时间间隔计算" />
    
    <link href="${request.contextPath}/bootstart/css/bootstrap.min.css" rel="stylesheet">
    <link href="${request.contextPath}/bootstart/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <link href="${request.contextPath}/css/navbar-fixed-top.css" rel="stylesheet">
    
    <script src="${request.contextPath}/js/jquery/jquery-1.11.1.min.js"></script>
    <script src="${request.contextPath}/bootstart/js/bootstrap.min.js"></script>
  </head>

  <body style="min-height: 0px;">
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
          <a class="navbar-brand" href="${request.contextPath}/">日期计算</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active" onclick="activeLi(this,'');"><a href="${sellerUrl!''}" target="_blank">9.9包邮</a></li>
            <li onclick="activeLi(this,'');"><a href="http://www.dovip.top/" target="_blank">开口示爱</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    <!-- 农历阳历互转开始 -->
    <div class="container">
      <div class="jumbotron" id="content">
		   <div class="form-group">
                <label for="dtp_input1" class="col-md-2 control-label">选择年份</label>
                <div class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy-MM-dd" data-link-field="convertDate">
                    <input class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
				<input type="hidden" id="convertDate" value="" /><br/>
            </div>
            <div class="form-group" style="margin-left:11%">
                <p style="text-align:left;">
                	<input type="button" onclick="convertDate(0);" class="btn btn-primary" value="农历转阳历">
                	<input type="button" onclick="convertDate(1);" class="btn btn-info" value="阳历转农历">
                </p>
            </div>
            
            <div id="convertDiv"></div>
            
            <!-- 返回结果 -->
		   	<div class="alert alert-success alert-dismissable" id="result" style="display:none;">
			   <button type="button" class="close" data-dismiss="alert" 
			      aria-hidden="true" onclick="$(this).parent().fadeOut(800);">
			      &times;
			   </button>
			   <span></span>
			</div>
      </div>
    </div> <!-- /container -->
    <!-- 农历阳历互转结束 -->

	<!-- 是不是闰年start -->
    <div class="container">
      <div class="jumbotron" id="content">
		   <div class="form-group">
                <label for="dtp_input1" class="col-md-2 control-label">输入年份</label>
                <input size="30" type="text" value="" id="yearId" placeholder="2015" >
				<input type="hidden" id="convertDate" value="" /><br/>
            </div>
            <div class="form-group" style="margin-left:11%">
                <p style="text-align:left;">
                	<input type="button" onclick="isLeapYear();" class="btn btn-info" value="开始计算">
                </p>
            </div>
            
            <div id="isLeapYearDiv"></div>
            
            <!-- 返回结果 -->
		   	<div class="alert alert-success alert-dismissable" id="result" style="display:none;">
			   <button type="button" class="close" data-dismiss="alert" 
			      aria-hidden="true" onclick="$(this).parent().fadeOut(800);">
			      &times;
			   </button>
			   <span></span>
			</div>
      </div>
    </div> <!-- /container -->
    <!-- 是不是闰年end -->

	<!-- 日期计算开始 -->
    <div class="container">
      <div class="jumbotron" id="content">
		   <div class="form-group">
                <label for="dtp_input1" class="col-md-2 control-label">开始时间</label>
                <div class="input-group date form_datetime col-md-5" data-date="" data-date-format="yyyy MM dd - HH:ii p" data-link-field="dtp_input1">
                    <input class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
				<input type="hidden" id="dtp_input1" value="" /><br/>
            </div>
            <div class="form-group">
                <label for="dtp_input1" class="col-md-2 control-label">结束时间</label>
                <div class="input-group date form_datetime col-md-5" data-date="" data-date-format="yyyy MM dd - HH:ii p" data-link-field="dtp_input2">
                    <input class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
				<input type="hidden" id="dtp_input2" value="" /><br/>
            </div>
            <div class="form-group" style="margin-left:11%">
                <p class="help-block">提示：日历下面的今天可以直接定位到当前时间</p>
                <p style="text-align:left;"><input type="button" onclick="submit();" class="btn btn-default" value="计算"></p>
            </div>
            
            <div id="resultDiv"></div>
            
            <!-- 返回结果 -->
		   	<div class="alert alert-success alert-dismissable" id="result" style="display:none;">
			   <button type="button" class="close" data-dismiss="alert" 
			      aria-hidden="true" onclick="$(this).parent().fadeOut(800);">
			      &times;
			   </button>
			   <span></span>
			</div>
            
            <!-- 时钟start -->
            <!--
            <div class="form-group">
                <#include "template/click.ftl" >
            </div>
            -->
            <!-- 时钟end -->
      </div>
    </div> <!-- /container -->
    <!-- 日期计算结束 -->
    
    <script type="text/javascript" src="${request.contextPath}/bootstart/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${request.contextPath}/bootstart/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
    <script src="${request.contextPath}/js/date/index.js"></script>
    <script src="${request.contextPath}/js/count.js"></script>
  </body>
</html>
