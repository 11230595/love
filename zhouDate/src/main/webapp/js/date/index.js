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
	
	$.post("execute.do",{
		"startTime":startTime,
		"endTime":endTime
	},function(data){
		$("#result").find("span").html(startTime + "  到    " + endTime + "  共   <font color='red'> " + data.date + "</font>  ---如果您喜欢该站请Ctrl+D收藏。");
		$("#result").fadeIn(800);
	});
}