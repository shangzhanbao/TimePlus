$(function(){
	
	$(document).ready(function(){
		var url = mainSystemPath+"/view/pages/mini/commonality/proxy.html",
			h = document.body.scrollHeight,
			ifm = $("<iframe style='border:0;width:0px;height:0;display:none;'></iframe>").appendTo(document.body);
		ifm.attr("src", url + "#" + h);
		$(".redPackageValidTime").each(function(){
			var time = $.trim($(this).html());
			if(time != ""){
				time = time.replace(/-/g,"/");
				var date = new Date(time);
				$(this).html(date.getFullYear()+"年"+(date.getMonth()+1)+"月"+date.getDate()+"日");
			}
		})
	}); 
	
	
	/**
	 * 删除红包
	 * 
	 * @author 文东
	 * @date 2014-10-11
	 */
	$(document).on("click",".deleteRedP",function(){
		if(confirm("确定删除吗？")){
		// 获取需要删除的用户id
		var id = $(this).attr("data-redPackageId");
			$.ajax({
				type : "POST",
				url : root+"/siims/vmaque/redPackage/delRedPackage.jspx?id="+id,
				success : function(data){
					window.location.reload();
				}
			})
		}
	});
})