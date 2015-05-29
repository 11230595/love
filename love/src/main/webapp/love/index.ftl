<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${request.contextPath}/ico/favicon.ico">

    <title>dovip.top-首页</title>

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
    <#include "template/head.ftl">


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>欢迎您光临dovip.top</h1>
              <p>&nbsp;</p>
              <p>接下来您可以在本站选择模板，制作您自己的网站，快来亲自试下吧。</p>
              <p>
          	 	<#if user?exists>
          	 		<a class="btn btn-lg btn-primary" href="#temp1" role="button">
          				去尝试
          			</a>
          		<#else>
          			<a class="btn btn-lg btn-primary" href="${request.contextPath}/user/login" role="button">
          				登陆dovip去尝试
          			</a>
          		</#if>
              </p>
            </div>
          </div>
        </div>
        <div class="item" name="item">
          <img class="second-slide" src="${request.contextPath}/images/a.png" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <!--<h1>模板一</h1>
              <p>优点：带音乐</p>-->
              <p><a class="btn btn-lg btn-primary" href="#temp1" role="button">使用该模板制作</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="${request.contextPath}/images/b.png" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <!--<h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>-->
              <p><a class="btn btn-lg btn-primary" href="#temp2" role="button">使用该模板制作</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


      <!-- START THE FEATURETTES -->
      <hr class="featurette-divider">
      <!-- 包裹层start -->
	<div style="width:95%;text-align:center;" id="temp1">
      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">模板一， <span class="text-muted">使用规则</span></h2>
          <p class="lead">您可以填入右侧红色文字显示的部分，您和他/她开始的时间，既可以生成右边的模板和和网址。</p>
          <p><a class="btn btn-default" href="${request.contextPath}/create/1" role="button" target="_blank">去生成 &raquo;</a></p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="${request.contextPath}/images/a1.png" alt="模板一">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette" id="temp2">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">模板二， <span class="text-muted">使用规则</span></h2>
          <p class="lead">您可以填入左侧绿色文字显示的部分，您和他开始的时间，既可以生成左侧的模板和网址。</p>
          <p><a class="btn btn-default" href="${request.contextPath}/create/2" role="button" target="_blank">去生成 &raquo;</a></p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="${request.contextPath}/images/b1.png" alt="模板二">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">期待..<span class="text-muted">更多模板正在开发中...</span></h2>
          <p class="lead">站长联系方式：<code>zhoudong611@163.com</code></p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
        </div>
      </div>
	</div>
	<!-- 包裹层end -->
      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
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
  </body>
</html>
