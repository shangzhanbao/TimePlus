$(function(){
	
	/**
	 * 添加学生
	 * 作者：左香勇
	 * 创建时间：2014-9-29
	 */
	$(".addStudent").click(function(){
		// 定义蒙板高度
		var h=document.documentElement.clientHeight;
		// 定义蒙板宽度
		var w=document.documentElement.clientWidth;
		// 蒙板div样式
		var div="<div id=\"addStudentBan\" style='background-color: rgba(0,0,70,.1);position:fixed;border:0px solid;z-index:3;left:0;top:0;width:"+w+"px;height:"+h+"px;'></div>";
		$(this).closest("body").append(div);
		$("#addStudentDiv").show();
	});
	
	/**
	 * 添加学生保存按钮
	 */
	$("#addStudentBtn").click(function(){
		$.ajax({
			type : "POST",
			data : $("#addStudentForm").serialize(),
			url : "/siims/vmaque/studentTest/addStudent.jspx",
			success : function(data){
				location.reload();
			}
		})
	});
	
	/**
	 * 删除学生
	 */
	$(".deleteStudent").click(function(){
		$.ajax({
			type : "POST",
			url : "/siims/vmaque/studentTest/deleteStudent.jspx?studentData.id="+$(this).attr("data-stuId"),
			success : function(data){
				location.reload();
			}
		});
	});
	
	/**
	 * 点击修改按钮
	 */
	$(".editStudent").click(function(){
		// 定义蒙板高度
		var h=document.documentElement.clientHeight;
		// 定义蒙板宽度
		var w=document.documentElement.clientWidth;
		// 蒙板div样式
		var div="<div id=\"editStudentBan\" style='background-color: rgba(0,0,70,.1);position:fixed;border:0px solid;z-index:3;left:0;top:0;width:"+w+"px;height:"+h+"px;'>"
		+"<div style=\"background:#fff;width:300px;height:140px;margin:0 auto;\"><form id=\"editStudentForm\">"
		+"<input type=\"hidden\" name=\"studentData.id\" value=\""+$(this).parents("tr").find("#stuId").text()+"\">"
		+"学生姓名:<input type=\"text\" name=\"studentData.name\" value=\""+$(this).parents("tr").find("#stuName").text()+"\"><br/>"
		+"学生年龄:<input type=\"text\" name=\"studentData.age\" value=\""+$(this).parents("tr").find("#stuAge").text()+"\">"
		+"</form><div class=\"control-group\">"
    	+"<div class=\"controls\">"
    	+"<a href=\"javascript:editStudentBc()\" id=\"editStudentBtn\" class=\"btn disabled\">保存</a>"
    	+"<a href=\"javascript:editStudentCancel()\" id=\"editStudentCancel\" class=\"btn disabled\">取消</a>"
    	+"</div></div></div></div>";
		$(this).closest("body").append(div);
	});
	
	
	/**
	 * 添加取消按钮
	 */
	$("#addStudentCancel").click(function(){
		$("#addStudent").remove();
		$("#addStudentDiv").hide();
	});
	
});
/**
 * 修改取消按钮
 */
function editStudentCancel(){
	$("#editStudentBan").remove();
}
/**
 * 修改学生保存按钮
 */
function editStudentBc(){
	$.ajax({
		type : "POST",
		data : $("#editStudentForm").serialize(),
		url : "/siims/vmaque/studentTest/editStudent.jspx",
		success : function(data){
			location.reload();
		}
	});
}
	