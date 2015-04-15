<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="/wro/red.test.css"/>
	<script type="text/javascript" src="/wro/jquery.base.js"></script>
	<script type="text/javascript" src="/wro/red.testJs.js"></script>
	<title>测试首页</title>
</head>
<body>
	<form id="testUserList" action="/siims/vmaque/redPackage/toindex.jspx">
	<table id="testUserTab" class="table table-striped">
	 	<thead>
			<tr>
				<th><input id="selAllUserBox" type="checkbox"></input></th>
				<th>序列号</th>
				<th style="width:250px">ID</th>
				<th>用户名称</th>
				<th>用户性别</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		  <#list testUserDatas as testUserData>
			<tr>
				<td><input class="selUserBox" type="checkbox"></input></td>
				<td class="user_index">${testUserData_index+1}</td>
				<td>${testUserData.id}</td>
				<td>${testUserData.name}</td>
				<#if testUserData.sex = 0>
					<td>男</td>
				<#elseif testUserData.sex = 1>
					<td>女</td>
				<#else>
					<td>未知</td>
				</#if>
				
				<td>
					<span>
					<a href="###" class="updateTestUser" data-userId = "${testUserData.id}">修改</a>
					</span> | <span style="margin-left:2px;">
					<a href="###" class="delTestUser" data-userId = "${testUserData.id}">删除</a>
					</span>
				</td>
			</tr>
			</#list>
			<tr>
				<td colspan="5">
					<button class="btn btn-primary" id="delAllTestUser" type="button">删除</button>
					<button class="btn btn-primary addTestUser" type="button">新增</button>
				</td>
			</tr>
		</tbody>
	</table>
	<#include "util/pageRoll.ftl">
	</form>
	<div id="addTestUserDiv" style="background-color:#fff; position: fixed;display:none;z-index:10;top:30%;right:30%;width: 520px;height: 170px;">
		    <form id="addTestUserForm" class="form-horizontal" style="margin-top:15px">
    			<div class="control-group">
    				<label class="control-label" for="inputName">用户名称</label>
    				<div class="controls">
   						 <input type="text" id="inputUserName" name="testUserData.name" placeholder="用户名称">
    				</div>
    			</div>
    			<div class="control-group">
    				<label class="control-label" for="inputPassword">性别</label>
    				<div class="controls">
    					<select name="testUserData.sex" class="select span2" data-size="false">  
          					<option value="0">男</option>  
          					<option value="1">女</option>  
      					</select>  
    				</div>
    			</div>
    			<div class="control-group">
    				<div class="controls">
    					<a href="###" id="addTestUserBtn" class="btn disabled">保存</a>
    					<a href="###" id="exitAddTestUser" class="btn disabled">取消</a>
    				</div>
    			</div>
    		</form>
	</div>
</body> 
</html>