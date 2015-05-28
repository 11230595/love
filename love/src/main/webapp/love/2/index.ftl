<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>浪漫小网站demo，请您点击查看</title>

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

</head>

<body bgcolor="#f6f4ea">

<div id="mainDiv">
	<div id="content">
		<div id="code">
			<span class="comments">萌萌</span><br />
			<span class="space"/><span class="comments"> </span><br />
			<span class="comments">终于到了这一天</span><br />
			<span class="space"/><span class="comments"> </span><br />
			<span class="comments">我不想多说这一路的千辛万苦</span><br />
			<span class="comments">因为我太爱你了</span><br />
			<span class="comments">很多人都不曾像我爱你那样爱过一个人</span><br />
			<span class="comments">你棕色的大眼睛让我着迷</span><br />
			<span class="comments">你的笑声每夜都会传入我的梦境</span><br />
			<span class="space"/><span class="comments"> </span><br />
			<span class="comments">青春总有一段难熬的日子</span><br />
			<span class="comments">让我疲倦、让我觉得生活有些乱</span><br />
			<span class="comments">可我相信终有一天你会来到我的身边</span><br />
			<span class="comments">你陪我畅聊，不再孤单</span><br />
			<span class="comments">我照顾你起居</span><br />
			<span class="comments"> </span><br />
			<span class="space"/><span class="comments"> </span><br />
			<span class="space"/><span class="comments"> </span><br />
			<span class="space"/><span class="comments"> </span><br />
			<span class="comments">I want to say:</span><br />
			<span class="comments">Baby, I love you forever;</span><br />
			<!-- <span class="keyword">The boy</span> very <span class="keyword">happy</span>;<br />
			<span class="keyword">The girl</span> is also very <span class="keyword">happy</span>;<br />
			<span class="placeholder"/><span class="comments">// Whether it is right now</span><br />
			<span class="placeholder"/><span class="comments">// Still in the distant future.</span><br />
			<span class="placeholder"/>The boy has but one dream;<br />
			<span class="comments">// The boy wants the girl could well have been happy.</span><br /> -->
		</div>
		<div id="loveHeart">
			<canvas id="garden"></canvas>
			<div id="words">
				<div id="messages">
					萌萌，这是我们相识到现在的时光。
					<div id="elapseClock"></div>
				</div>
				<div id="loveu">
					我会爱你直到生命的最后一刻<br/>
					<div class="signature">- 周栋</div>
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
together.setFullYear(2004, 9, 1);
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