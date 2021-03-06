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
  </head>

  <body style="min-height: 0px;">
	<#include "template/head.ftl" ><!-- 头 -->
	
	<!-- 根据日期计算星座start -->
    <div class="container">
      <h3 style="color:red;">星座查询</h3>
      <div class="jumbotron" id="content">
		   <div class="form-group">
                <label for="dtp_input1" class="col-md-2 control-label">选择日期</label>
                <div class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy-MM-dd" data-link-field="sign_input1">
                    <input class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
				<input type="hidden" id="sign_input1" value="" /><br/>
            </div>
            
            <div class="form-group" style="margin-left:16.8%">
                <p class="help-block" style="font-size:12px;">小提示：如果您选择的是农历的日期，请点击“根据农历查询星座”，否则请点击“根据阳历查询星座”</p>
                <p style="text-align:left;">
                	<input type="button" onclick="findSign(0);" class="btn btn-primary" value="根据农历查询星座">
                	<input type="button" onclick="findSign(1);" class="btn btn-info" value="根据阳历查询星座">
                </p>
            </div>
            
            <div id="signDiv"></div>
            
            <!-- 返回结果 -->
		   	<div class="alert alert-success alert-dismissable" id="signResult" style="display:none;">
			   <button type="button" class="close" data-dismiss="alert" 
			      aria-hidden="true" onclick="$(this).parent().fadeOut(800);">
			      &times;
			   </button>
			   <span></span>
			</div>
      </div>
    </div> <!-- /container -->
    <!-- 根据日期计算星座end -->
	
	
    <!-- 农历阳历互转开始 -->
    <div class="container">
    <h3>农历阳历互转</h3>
      <div class="jumbotron" id="content">
		   <div class="form-group">
                <label for="dtp_input1" class="col-md-2 control-label">选择年份</label>
                <div class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy-MM-dd" data-link-field="convertDate">
                    <input class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
				<input type="hidden" id="selectDate" value="" /><br/>
            </div>
            <div class="form-group" style="margin-left:16.8%">
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

	<!-- 日期计算开始 -->
    <div class="container">
      <h3>日期计算</h3>
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
            <div class="form-group" style="margin-left:16.8%">
                <p class="help-block">提示：日历下面的今天可以直接定位到当前时间</p>
                <p style="text-align:left;"><input type="button" onclick="submit();" class="btn btn-info" value="开始计算"></p>
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
    
    <!-- 是不是闰年start -->
    <div class="container">
      <h3>计算闰年</h3>
      <div class="jumbotron" id="content">
		   <div class="form-group">
                <label for="dtp_input1" class="col-md-2 control-label">输入年份</label>
                <div class="col-xs-3">
                	<input size="30" type="text" class="form-control" value="" id="yearId" placeholder="2015" >
				</div>
				<input type="hidden" id="convertDate" value="" /><br/>
            </div>
            <div class="form-group" style="margin-left:18%;margin-top:30px;">
                <input type="button" onclick="isLeapYear();" class="btn btn-info" value="开始计算">
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
    
    <#include "template/foot.ftl" ><!-- 脚 -->
    
    <script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
    <script src="${request.contextPath}/date/js/index.js"></script>
    <script src="${request.contextPath}/date/js/sign.js"></script>
  </body>
</html>
