<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${request.contextPath}/ico/favicon.ico">

    <title>开口示爱-表白，浪漫之家</title>

    <!-- Bootstrap core CSS -->
    <link href="${request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- 日历 -->
    <link href="${request.contextPath}/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <script src="${request.contextPath}/bootstrap/js/ie-emulation-modes-warning.js"></script>

    <!-- Custom styles for this template -->
    <link href="${request.contextPath}/bootstrap/css/carousel.css" rel="stylesheet">
  </head>
<!-- NAVBAR
================================================== -->
  <body>
  	<!-- 头信息 -->
  	<#include "template/head.ftl">
  
    <hr class="featurette-divider">
	<!-- 包裹层start -->
	<form action="" class="form-horizontal"  role="form" id="f">
	<input type="hidden" id="userId" name="userId" value="${user.userId!''}">
	<input type="hidden" id="userCode" name="userCode" value="${user.userCode!''}">
	<input type="hidden" id="templateId" name="tempNum" value="${flag!0}">
	<div style="width:90%;margin-left:5%">
      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2><span class="text-muted">填入以下信息以生成网址</span></h2>
          <p class="lead">
          	<div class="input-group"><span class="input-group-addon">域名</span>
	        	<span class="input-group-addon"><code>${url!''}i/</code></span>
	         	<input type="text" required id="webCode" name="webCode" class="form-control" onblur="checkWebCode(this);" placeholder="如果您填“love”,您的访问域名将是http://dovip.top/i/love">
	      	</div>
	      	<div class="alert alert-danger" id="hint" style="display:none;">该域名已经被注册！</div>
      	  </p>
      	  <p class="lead">
          	<div class="input-group">
          		<span class="input-group-addon">你对他/她的称呼</span>
	         	<input type="text" required class="form-control" id="uName" name="uName" onblur="checkName(this);" placeholder="如：“亲爱的”">
	      	</div>
      	  </p>
      	  <p class="lead">
          	<div class="input-group">
          		<span class="input-group-addon">你的称呼</span>
	         	<input type="text" required class="form-control" id="mName" name="mName" onblur="checkName(this);" placeholder="自己对自己的称呼">
	      	</div>
      	  </p>
      	  <p class="lead">您想说的话<span> &nbsp; 请注意，每一行文字写在一个输入框，多余的请添加行</span></p>
      	  
      	  <p class="lead">
	      	  <div id="content">
	      	  	<p class="lead"><input required type="text" id="content1" name="content" class="form-control" placeholder="第1行文字"></p>
	      	  	<p class="lead"><input required type="text" id="content2" name="content" class="form-control" placeholder="第2行文字"></p>
	      	  </div>
      	  </p>
      	  
      	  <p class="lead"><a class="btn btn-sm btn-default" href="javascript:void(0);" onclick="addLine();" role="button">添加行</a></p>
          <!-- 日期选择器start -->
          <p class="lead">
      	  <div class="form-group">
			    <label for="dtp_input2" class="col-md-2 control-label">你们开始时间</label>
			    <div class="input-group date form_date col-md-5" onclick="$(this).parent().removeClass('has-error')" data-date="" data-date-format="yyyy,MM,dd" data-link-field="dtp_input2" data-link-format="yyyy,mm,dd">
			        <input class="form-control" size="16" type="text" value="" readonly>
			        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
			    </div>
				<input type="hidden" required id="dtp_input2" name="date" value="" /><br/>
		  </div>
		  </p>
		  <!-- 日期选择器end -->
		  <p class="help-block">建议您预览后生成</p>
		  <p class="lead">
		  	<a class="btn btn-default" href="javascript:void(0);" onclick="checkForm(0);" role="button">去预览 &raquo;</a>
		  	<a class="btn btn-default" href="javascript:void(0);" onclick="checkForm(1);" role="button">生成</a>
		  </p>
		  
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="${request.contextPath}/images/${flag!0}.png" alt="模板二">
        </div>
      </div>
	</div>
	</form>
	<!-- 包裹层end -->
      <hr class="featurette-divider">
      <!-- /END THE FEATURETTES -->


      <!-- 地脚信息 -->
  	  <#include "template/foot.ftl">

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
    <!-- 日历 -->
    <script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
    <!-- 把js写入文件 -->
    <script src="${request.contextPath}/love/js/create.js"></script>
  </body>
</html>
