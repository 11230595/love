<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>开口示爱-表白，浪漫之家</title>

<style type="text/css">
@font-face {
	font-family: digit;
	src: url('digital-7_mono.ttf') format("truetype");
}
</style>

<link href="${request.contextPath}/love/2/css/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="${request.contextPath}/love/2/js/jquery.js"></script>
<script type="text/javascript" src="${request.contextPath}/love/2/js/garden.js"></script>
<script type="text/javascript" src="${request.contextPath}/love/2/js/functions.js"></script>
<script src="${request.contextPath}/love/js/count.js"></script>
<script src="${request.contextPath}/love/js/share.js"></script>
</head>

<body bgcolor="#f6f4ea">

<div id="mainDiv">
	<div id="content">
		<div id="code">
			<span class="comments">${template.uName!''}</span><br />
			
			<#list contents as content>
				<span class="comments">${content!''}</span><br />
			</#list>
			<span class="space"/><span class="comments"> </span><br />
			<span class="space"/><span class="comments"> </span><br />
			
		</div>
		<div id="loveHeart">
			<canvas id="garden"></canvas>
			<div id="words">
				<div id="messages">
					${template.uName!''}，这是我们相识到现在的时光。
					<div id="elapseClock"></div>
				</div>
				<div id="loveu">
					爱你直到生命的最后一刻<br/>
					<div class="signature">- ${template.mName!''}</div>
				</div>
			</div>
		</div>
	</div>
	<!-- <div id="copyright">  				---------link-------------
		<a href="#">....</a><br />
		<a href="#">....</a><br />
		
	</div> -->
</div>

<script type="text/javascript">
var offsetX = $("#loveHeart").width() / 2;
var offsetY = $("#loveHeart").height() / 2 - 55;
var together = new Date();
together.setFullYear(${year!2015},${month!1},${day!1});
together.setHours(20);
together.setMinutes(0);
together.setSeconds(0);
together.setMilliseconds(0);

if (!document.createElement('canvas').getContext) {
	var msg = document.createElement("div");
	msg.id = "errorMsg";
	msg.innerHTML = "Your browser doesn't support HTML5!<br/>Recommend use Chrome 14+/IE 9+/Firefox 7+/Safari 4+"; 
	document.body.appendChild(msg);
	$("#code").css("display", "none")
	$("#copyright").css("position", "absolute");
	$("#copyright").css("bottom", "10px");
	document.execCommand("stop");
} else {
	setTimeout(function () {
		startHeartAnimation();
	}, 5000);

	timeElapse(together);
	setInterval(function () {
		timeElapse(together);
	}, 500);

	adjustCodePosition();
	$("#code").typewriter();
}
</script>

</body>
</html>