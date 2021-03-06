<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CSS3 Digital Clock with jQuery</title>
<style type="text/css">
/* clock */
.clock{width:100%;color:#fff;margin-left:3%}
.clock #Date{font-family:'BebasNeueRegular', Arial, Helvetica, sans-serif;font-size:30px;text-align:left;text-shadow:0 0 5px #000;}
.clock ul{width:100%;margin:0 auto;padding:0px;list-style:none;text-align:left;}
.clock ul li{display:inline;font-size:30px;text-align:left;font-family:'BebasNeueRegular', Arial, Helvetica, sans-serif;text-shadow:0 0 5px #000;}
#point{position:relative;-moz-animation:mymove 1s ease infinite;-webkit-animation:mymove 1s ease infinite;padding-left:10px;padding-right:10px;}
@-webkit-keyframes mymove{
	0%{opacity:1.0;text-shadow:0 0 20px #000;}
	50%{opacity:0;text-shadow:none;}
	100%{opacity:1.0;text-shadow:0 0 20px #000;}	
}


@-moz-keyframes mymove{
	0%{opacity:1.0;text-shadow:0 0 20px #000;}
	50%{opacity:0;text-shadow:none;}
	100%{opacity:1.0;text-shadow:0 0 20px #000;}	
}
</style>
<script type="text/javascript">
$(document).ready(function() {

	// 创建两个变量，一个数组中的月和日的名称
	var monthNames = [ "一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月" ]; 
	var dayNames= ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"]

	// 创建一个对象newDate（）
	var newDate = new Date();
	// 提取当前的日期从日期对象
	newDate.setDate(newDate.getDate());
	//输出的日子，日期，月和年
	$('#Date').html(newDate.getFullYear() + " " + monthNames[newDate.getMonth()] + ' ' + newDate.getDate() + ' ' + dayNames[newDate.getDay()]);

	setInterval( function() {
		// 创建一个对象，并提取newDate（）在访问者的当前时间的秒
		var seconds = new Date().getSeconds();
		//添加前导零秒值
		$("#sec").html(( seconds < 10 ? "0" : "" ) + seconds);
	},1000);
	
	setInterval( function() {
		// 创建一个对象，并提取newDate（）在访问者的当前时间的分钟
		var minutes = new Date().getMinutes();
		// 添加前导零的分钟值
		$("#min").html(( minutes < 10 ? "0" : "" ) + minutes);
    },1000);
	
	setInterval( function() {
		// 创建一个对象，并提取newDate（）在访问者的当前时间的小时
		var hours = new Date().getHours();
		// 添加前导零的小时值
		$("#hours").html(( hours < 10 ? "0" : "" ) + hours);
    }, 1000);
	
}); 
</script>
</head>
<body>


<div class="clock">

	<ul>
		<li>现在时间：</li>
		<li id="Date"></li>&nbsp;&nbsp;&nbsp;&nbsp;
		<li id="hours"> </li>
		<li id="point">:</li>
		<li id="min"> </li>
		<li id="point">:</li>
		<li id="sec"> </li>
	</ul>
	
</div>

</body>
</html> 