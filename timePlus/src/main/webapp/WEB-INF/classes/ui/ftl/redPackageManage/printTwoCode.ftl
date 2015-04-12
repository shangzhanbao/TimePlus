<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<#include "/ui/ftl/util/variable.ftl"/>
	<script type="text/javascript" src="${root}/wro/jquery.base.js"></script>
	<title>打印二维码</title>
	<script type="text/javascript">
		$(function(){
			// 打印页面预览 
			try{
   				wb.execwb(7, 1);
			}catch(e){
				alert("请使用ie浏览器，并把安全级别调低！");
			}
		});
	</script>
</head>
<body>
	<!--调用active-->
	<object classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2" height=0 id=wb name=wb width=3></object>
  	<div align="center" style="margin-top:50px;">
  		<img src="${root}${filePath}" width="500" height="500" />
  	</div>
</body> 
</html>