//日历初始化
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

//农历转阳历
function findSign(flag){
	var time = $("#dtp_input1").val();
	
	if(time == ""){
		alert("时间不能为空");
		return;
	}
	
	$.post("get",{
		"time":time,
		"flag":flag
	},function(data){
		$("#resultDiv").empty();
		var template = $("#result").clone();
		template.find("span").html("您的阳历生日为：<font color='red'> " + data.date + "</font>  \
				您属于<a href='javascript:void(0)'>"+data.name+"</a>（点击可查看详情） &nbsp;&nbsp; ---如果您喜欢该站请Ctrl+D收藏。");
		template.fadeIn(800);
		$("#resultDiv").append(template);
	});
}
