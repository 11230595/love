/**
 * 验证二级域名是否可用
 */
function checkWebCode(){
	if($.trim($("#webCode").val()) == ''){
		return;
	}
	$("#hint").hide();
	$("#webCode").parent("div").removeClass("has-error");
	$.post("../template/checkWebCode",{
		"webCode":$("#webCode").val()
	},function(data){
		if(data.respCode == 1){
			$("#hint").show();
			$("#webCode").parent("div").addClass("has-error");
			flag = false;
		}else{
			flag = true;
		}
	})
}