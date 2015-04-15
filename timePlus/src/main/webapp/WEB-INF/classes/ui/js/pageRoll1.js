$(function(){
	
	/**
	 * @author 文东
	 * 点击页数翻页
	 */
	$(".currentPage").on("click",function(){
		// 选择的页数
		$(".pageRoll").html($(this).html());
		$("#currentPage").val($(this).attr("data"));
		var action=$(this).closest("form").attr("action");
		action=action+"&snatchPackageUserData.startRow="+$(this).html();
		var state=$("#state").val().trim();
		var timeIdent=$("#timeIdent").val().trim();
		if(state!=""){
			action=action+"&snatchPackageUserData.redPackageState="+state;
		}
		if(timeIdent!=""){
			action=action+"&snatchPackageUserData.timeIdent="+timeIdent;
		}
		$(this).closest("form").attr("action",action);
		$(this).closest("form").submit();
	})
	
	/**
	 * @author 文东
	 * 填写页数点击确定翻页
	 */
	$(".toCurr").on("click",function(){
		// 获取用户输入的页数
		var curr = $("#inCurrNum").html();
		if(curr == null || curr == ""){
			$("#currentPage").val(0);
		}else{
			$("#currentPage").val(curr-1);
		}
		var action=$(this).closest("form").attr("action");
		action=action+"&snatchPackageUserData.startRow="+curr;
		var state=$("#state").val().trim();
		var timeIdent=$("#timeIdent").val().trim();
		if(state!=""){
			action=action+"&snatchPackageUserData.redPackageState="+state;
		}
		if(timeIdent!=""){
			action=action+"&snatchPackageUserData.timeIdent="+timeIdent;
		}
		$(this).closest("form").attr("action",action);
		$(this).closest("form").submit();
	})
	
})