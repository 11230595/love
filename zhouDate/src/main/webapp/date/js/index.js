$('.form_datetime').datetimepicker({
    language:  'zh-CN',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	forceParse: 0,
    showMeridian: 1,
    todayHighlight:true
});
$('.form_date').datetimepicker({
    language:  'zh-CN',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0
});
/**
 * 计算日期
 */
function submit(){
	var startTime = $("#dtp_input1").val();
	var endTime = $("#dtp_input2").val();
	
	if(startTime == ""){
		alert("开始时间不能为空");
		return;
	}
	
	if(endTime == ""){
		alert("结束时间不能为空");
		return;
	}
	
	$.post("execute",{
		"startTime":startTime,
		"endTime":endTime
	},function(data){
		var template = $("#result").clone();
		template.find("span").html(startTime + "  到    " + endTime + "  共   <font color='red'> " + data.date + "</font>  ---如果您喜欢该站请Ctrl+D收藏。");
		template.fadeIn(800);
		$("#resultDiv").append(template);
	});
}

//农历转阳历
function convertDate(flag){
	var time = $("#convertDate").val();
	
	if(time == ""){
		alert("时间不能为空");
		return;
	}
	
	$.post("convertDate",{
		"time":time,
		"flag":flag
	},function(data){
		$("#convertDiv").empty();
		var template = $("#result").clone();
		template.find("span").html(data.respMsg + "<font color='red'> " + data.date + "</font> &nbsp;&nbsp; ---如果您喜欢该站请Ctrl+D收藏。");
		template.fadeIn(800);
		$("#convertDiv").append(template);
	});
}

//是不是闰年
function isLeapYear(){
	var time = $("#yearId").val();
	
	if(time == ""){
		alert("时间不能为空");
		return;
	}
	
	$.post("isLeapYear",{
		"time":time
	},function(data){
		$("#isLeapYearDiv").empty();
		var template = $("#result").clone();
		template.find("span").html(data.respMsg + " &nbsp;&nbsp; ---如果您喜欢该站请Ctrl+D收藏。");
		template.fadeIn(800);
		$("#isLeapYearDiv").append(template);
	});
}