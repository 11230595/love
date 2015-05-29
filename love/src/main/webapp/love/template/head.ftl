<div class="navbar-wrapper">
  <div class="container">

    <!--<nav class="navbar navbar-inverse navbar-static-top">-->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${request.contextPath}">dovip.top</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="${request.contextPath}">首页</a></li>
            <li><a href="#about">关于</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="active">
            	<#if user??>
            		<a href="#">${user.userCode!''}</a>
            	</#if>
            </li>
            <li>
            	<a>&nbsp;</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

  </div>
</div>