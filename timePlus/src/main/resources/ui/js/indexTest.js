$(function(){
	
	/**
	 * 测试添加功能
	 * 作者：文东
	 * 创建时间：2014/09/26 下午 3:11
	 */
	$(".addTestUser").click(function(){
		// 定义蒙板高度
		var h=document.documentElement.clientHeight;
		// 定义蒙板宽度
		var w=document.documentElement.clientWidth;
		// 蒙板div样式
		var div="<div id=\"addMengBan\" style='background-color: rgba(0,0,70,.1);position:fixed;border:0px solid;z-index:3;left:0;top:0;width:"+w+"px;height:"+h+"px;'></div>";
		$(this).closest("body").append(div);
		$("#addTestUserDiv").show();
	});
	
	/**
	 * 将数据提交到后台 添加测试用户
	 * 作者：文东
	 * 创建时间：2014/09/30 下午 1:39
	 */
	$("#addTestUserBtn").on("click",function(){
		$.ajax({
			type : "POST",
			data : $("#addTestUserForm").serialize(),
			url : "/siims/vmaque/redPackage/addTestUser.jspx",
			success : function(data){
				//  判断性别
				var sex = "";
				if(data.sex == 0){
					sex = "男";
				}else if(data.sex == 1){
					sex = "女"
				}
				// js 动态为表添加数据
				$("#testUserTab").find("tbody").find("tr:eq(0)").before("<tr>" +
						"<td><input class=\"selUserBox\" type=\"checkbox\"></input></td>" +
						"<td class=\"user_index\"></td><td>"+data.id+"</td>" +
						"<td>"+data.name+"</td>" +
						"<td>"+sex+"</td>" +
						"<td><span><a href=\"###\" class=\"updateTestUser\" data-userId = \""+data.id+"\">修改</a></span> | " +
							"<span style=\"margin-left:2px;\"><a href=\"###\" class=\"delTestUser\" data-userId = \""+data.id+"\">删除</a></span>" +
						"</td></tr>");
				// 表的行数 初始值为1
				var index = 1;
				$(".user_index").each(function(){
					$(this).text(index);
					index = index + 1;
					if(index > 11){
						$(this).closest("tr").remove();
						$("#testUserList").submit();
					}
				})
				// 改变分页显示的数据
				var totalRowsNum = $("#totalRowsNum").html();
				totalRowsNum = parseInt(totalRowsNum) + 1;
				$("#totalRowsNum").html(totalRowsNum);
				$("#addMengBan").remove();
				$("#inputUserName").html("");
				$("#addTestUserDiv").hide();
			}
		});
	
	});
	
	/**
	 * 将数据提交到后台 删除测试用户
	 * 作者：文东
	 * 创建时间：2014/09/30 下午 1:39
	 */
	$(document).on("click",".delTestUser",function(){
		if(confirm("确定删除吗？")){
		// 获取需要删除的用户id
		var id = $(this).attr("data-userId");
		var tr = $(this).closest("tr");
			$.ajax({
				type : "POST",
				url : "/siims/vmaque/redPackage/delTestUser.jspx?id="+id,
				success : function(data){
					$("#testUserList").submit();
				}
			})
		}
	});
	
	
	/**
	 * 取消添加数据
	 * 作者: 文东
	 * 创建时间：2014/09/30 下午4:59
	 */
	$("#exitAddTestUser").click(function(){
		$("#addMengBan").remove();
		$("#addTestUserDiv").hide();
	})
	
	
	/**
	 * 点击修改按钮
	 * 作者: 文东
	 * 创建时间 ： 2014/09/30 下午 5：00
	 */
	$(document).on("click",".updateTestUser",function(){
		// 获取测试用户的id
		var id = $(this).attr("data-userId");
		// ajax 查询用户相关信息
		$.ajax({
			type : "POST",
			url : "/siims/vmaque/redPackage/ajaxSearchUserById.jspx?id="+id,
			success : function(data){
				if(data.id !=null && data.id != ""){
					// 定义修改用户数据的html
					var editUserHtml ＝ "<div id=\"editTestUserDiv\" style=\"background-color:#fff; position: fixed;z-index:10;top:30%;right:30%;width: 520px;height: 170px;\">" +
							"<form id=\"editTestUserForm\" class=\"form-horizontal\" style=\"margin-top:15px\">" +
							"<div class=\"control-group\">" +
							"<label class=\"control-label\" for=\"editName\">用户名称</label>" +
							"<div class=\"controls\">" +
							"<input type=\"text\" id=\"editUserName\" value=\""+data.name+"\" name=\"testUserData.name\" placeholder=\"用户名称\"></div></div>" +
							"<div class=\"control-group\">" +
							"<label class=\"control-label\" for=\"editSex\">性别</label>" +
							"<div class=\"controls\"><select name=\"testUserData.sex\" class=\"select span2\" data-size=\"false\">" +
							"<option value=\"0\">男</option><option value=\"1\">女</option></select></div></div>" +
							"<div class=\"control-group\"><div class=\"controls\">" +
							"<a href=\"###\" id=\"addTestUserBtn\" class=\"btn disabled\">保存</a>" +
							"<a href=\"###\" id=\"exitAddTestUser\" class=\"btn disabled\">取消</a></div></div></form></div>";
					$("body").append(editUserHtml);
				}
			}
		})
	});
	
	
	
	
})