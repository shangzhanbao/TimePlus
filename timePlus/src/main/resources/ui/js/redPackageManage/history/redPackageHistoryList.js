$(function(){
	var id=$("#redPackageHistoryForm").attr("data");
 	//按照电话条件查询
	$("#chaxun").click(function(){
		var phone=$("#phone").val();
		window.location.href=root+'/siims/vmaque/redPackage/toRedPackageHistoryList.jspx?snatchPackageUserData.snatchUserPhone='+phone+"&snatchPackageUserData.redpackageId="+id;
	})
	
	//
	$(".chaxun_ul li a").click(function(){
		var phone=$("#phone").val();
		if($(this).attr("data")==1){
			window.location.href=root+"/siims/vmaque/redPackage/toRedPackageHistoryList.jspx?snatchPackageUserData.redpackageId="+id;
		}
		
		if($(this).attr("data")==2){
			window.location.href=root+"/siims/vmaque/redPackage/toRedPackageHistoryList.jspx?snatchPackageUserData.redPackageState=1&snatchPackageUserData.redpackageId="+id;
		}
		if($(this).attr("data")==3){
			window.location.href=root+"/siims/vmaque/redPackage/toRedPackageHistoryList.jspx?snatchPackageUserData.redPackageState=0&snatchPackageUserData.redpackageId="+id;
		}
		if($(this).attr("data")==4){
				window.location.href=root+"/siims/vmaque/redPackage/toRedPackageHistoryList.jspx?snatchPackageUserData.timeIdent=1&snatchPackageUserData.redpackageId="+id;
		}
		
	})

	
	 //复选框  全选/全部选
	 $("#checkBoxAll").click(function(){
		 if($("#checkBoxAll").prop("checked")){
			 $(".cbox").prop("checked",true);
		 }else{
			 $(".cbox").prop("checked",false);
		 }
	 });
			//单个选择
			$(".cbox").click(function(){
				 var len=$("input[name='ids']:checked").length;
				 var checkBoxLen = $(".cbox");
				if(checkBoxLen.length==len){
					 $("input[id=checkBoxAll]").prop("checked",true);
				}else{
					 $("input[id=checkBoxAll]").prop("checked",false);
				}
			});
	//批量删除
	$("#deleteRedAll").click(function(){
		 var num=$("input[name='ids']:checked").length;
		 if(num==0){
			 alert('请选择数据');
			 return false;
		}else{
			if(confirm("确认删除?")){
				$.ajax({
					type:'POST',
					url:root+"/siims/vmaque/snatchPackage/delSnatchInfoById.jspx",
				   data:$("#redPackageHistoryForm").serialize(),
				   success:function(data){
					   if(data==1){
						   var url=$("#redPackageHistoryForm").attr("action");
						   window.location.href=url;
					   }
				   }
					
				})
			}
		}
	})
	//单个删除
	$(".deleteRed").click(function(){
		var id=$(this).attr("data");
		if(confirm("确认删除?")){
			$.ajax({
				type:'POST',
				url:root+"/siims/vmaque/snatchPackage/delSnatchInfoById.jspx?ids="+id,
			   success:function(data){
				   if(data==1){
					   var url=$("#redPackageHistoryForm").attr("action");
					   window.location.href=url;
				   }
			   }
				
			})
		}
		
	})
	
	//使用
	$(".updateSaveRed").click(function(){
		var snid=$(this).attr("data");  //红包id
		var redid=$(this).attr("data2");  //红包id
		var collid=$(this).attr("data1");  //领红包id
		if(confirm("确认要使用吗?")){
			$.ajax({
				type:'POST',
				url:root+"/siims/vmaque/snatchPackage/updateSaveSnatchPackageUserData.jspx",
				data:"snatchPackageUserData.collarPackageUserId="+collid+"&snatchPackageUserData.redpackageId="+redid+"&snatchPackageUserData.id="+snid,
			   success:function(data){
				   if(data==1){
					   var url=$("#redPackageHistoryForm").attr("action");
					   window.location.href=url;
				   }
			   }
				
			})
		}
		
	})
	
	var state=$("#state").val().trim();
	var timeIdent=$("#timeIdent").val().trim();
	if(state!=""){
		  if(state=="1"){
			  $("#redstate1").addClass("licolor");
			  $("#redstate2").removeClass("licolor");
			  $("#redstate3").removeClass("licolor");
			  $("#redstate4").removeClass("licolor");
			 
			  return;
		  }
		  if(state=="0"){
			  $("#redstate2").addClass("licolor");
			  $("#redstate1").removeClass("licolor");
			  $("#redstate3").removeClass("licolor");
			  $("#redstate4").removeClass("licolor");
			  return;
		  }
	}
	if(timeIdent!=""){
		 if(timeIdent=="1"){
			  $("#redstate3").addClass("licolor");
			  $("#redstate1").removeClass("licolor");
			  $("#redstate2").removeClass("licolor");
			  $("#redstate4").removeClass("licolor");
			  return;
		  }
	}
	if(timeIdent==""&& state==""){
		$("#redstate4").addClass("licolor");
		$("#redstate1").removeClass("licolor");
		$("#redstate2").removeClass("licolor");
		$("#redstate3").removeClass("licolor");
		 return;
	}
	
})