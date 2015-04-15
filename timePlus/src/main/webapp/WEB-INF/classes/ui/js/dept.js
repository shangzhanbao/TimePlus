$(function(){
	
	$(".addDept").click(function(){
		$("#add_deptDiv").show();
	})
	/**
	 * 添加
	 */
	 $("#addDeptBtn").click(function(){
			$.ajax({
			 	type :"post",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
				url:'/siims/vmaque/dept/addDeptData.jspx',   
				data : $("#deptForm").serialize(),
				dataType : "text",
				success : function(data){
				 if(data=="1"){
			     	 window.location.href='/siims/vmaque/dept/getdempAll.jspx';
			     	 }
			  }
			})
	 })
	 /**
	 * 去修改页面
	 */
	 $(".toUpdateDept").click(function(){
		 var id=$(this).attr("data");
		 window.location.href='/siims/vmaque/dept/getDeptData.jspx?data.id='+id;
	 })
	/**
	 * 修改
	 */
	 $(".updateDept").click(function(){
		 var id=$(".deptId").val();
		 var name=$(".deptName").val();
		 $.ajax({
			type:"post",
			url:'/siims/vmaque/dept/updateDeptData.jspx?data.id='+id+"&data.deptName="+name,
			dataType:'json',
			success:function(data){
				 if(data=="1"){
			     	 window.location.href='/siims/vmaque/dept/getdempAll.jspx';
			     	 }
			}
			 
		 })
	 })
	 /**
	  * 删除
	  */
	 $(".deleteDept").click(function(){
		  var num=$("input[name='ChooseOne']:checked").length;
		  	var idsArray = new Array();
			
			var selected = $("input[name='ChooseOne']:checked");
			$("input[name='ChooseOne']:checked").each(function(){
				idsArray.push($(this).attr("data"));
			})
			
			var ids = idsArray.join(',');
	 if(num==0){
		 alert("请选择数据!");
		 return;
	 }else{
			 $.ajax({
					type:"post",
					url:'/siims/vmaque/dept/deleteDeptData.jspx?data.id='+ids,
					dataType:'json',
					success:function(data){
						 if(data=="1"){
					     	 window.location.href='/siims/vmaque/dept/getdempAll.jspx';
					     	 }
					}
					 
				 })
		 }
	 })
	 
	 /**
	 * 单个
	 */
	 $(".deleteDeptA").click(function(){
		 var id=$(this).attr("data");
		 $.ajax({
			type:"post",
			url:'/siims/vmaque/dept/deleteDeptDataById.jspx?data.id='+id,
			dataType:'json',
			success:function(data){
				 if(data=="1"){
			     	 window.location.href='/siims/vmaque/dept/getdempAll.jspx';
			     	 }
			}
			 
		 })
	 })
})
