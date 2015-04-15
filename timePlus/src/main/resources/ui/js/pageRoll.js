$(function(){
	
	/**
	 * @author 文东
	 * 点击页数翻页
	 */
	$(".currentPage").on("click",function(){
		// 选择的页数
		$("#currentPage").val($(this).attr("data"));
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
		$(this).closest("form").submit();
	})
	
})