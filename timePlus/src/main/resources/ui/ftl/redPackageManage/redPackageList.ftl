<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<#include "/ui/ftl/util/variable.ftl"/>
	<link rel="stylesheet" type="text/css" href="${root}/wro/red.util.css"/>
	<link rel="stylesheet" type="text/css" href="${root}/wro/red.redPackageManage.css"/>
	<script type="text/javascript" src="${root}/wro/jquery.base.js"></script>
	<script type="text/javascript" src="${root}/wro/red.redPackageManage.js"></script>
	<script type="text/javascript" src="${root}/wro/red.util.js"></script>
	<title>红包历史</title>
</head>
<body>
  		<form id="showAllRedPackage" action="${root}/siims/vmaque/redPackage/searchAllRedPackage.jspx">
    		<div class="DataStatistics_1">
      			<div class="DataStatistics_1Title">
        			<h1>红包管理</h1>
        			<lable style="margin-left: 480px;font-size: 14px">已创建数量：${pageRoll.totalRows}</lable>
        			<a class="btn_blue" style="float:right;margin-top:5px;margin-right:20px;" href="${root}/siims/vmaque/redPackage/skipRedPackage.jspx?step=1&userId=${userId}&createOrEdit=create">立即添加</a>
      			</div>
      			<#if (redPackageContentDatas?size>0)>
					<#list redPackageContentDatas as redPackageData>
      				<div class="DataStatistics3" style="width: 785px;height: 320px;border-bottom: 2px solid #DDD;padding-top:20px;padding-bottom: 20px">
						<div class="DataStatistics_2" id="">
							<div style="width: 230px;height: 226px;float: left;padding: 12px;padding-top: 0px;margin-top:12px;" class="divH1"> 
								<img class="redImg" src="${root}${redPackageData.packageImg}" >					
							</div>
							<div style="float: left;width: 200px;">
							<ul style="white-space: normal; word-break: break-all; overflow: hidden;">
								<li>
									<h1 style="font-size:20px;max-height: 30px;overflow: hidden;">
									<#if redPackageData.packageName?exists>
									${redPackageData.packageName}
									</#if>
									</h1>
								</li>
							</ul>
							<#assign collarNum = (redPackageData.packageNum)?default(0)-(redPackageData.residualPackageNum)?default(0)>
							<ul class="u7" style="margin-top:20px;">
								<li>已领个数：<span>${collarNum?default(0)}</span></li>
								<li>剩余个数：<span>${(redPackageData.residualPackageNum)?default(0) }</span></li>
								<li>截止日期：<span class="redPackageValidTime">
								
								<#if redPackageData.packageName?exists>
									${redPackageData.validTime?string("yyyy-MM-dd") }
								<#else>
									
								</#if>
								</span></li>
							</ul>
							<ul class="u8" style="">
								<li>
									<a class="btn_gray" href="${root}/siims/vmaque/redPackage/skipRedPackage.jspx?redPackageContentData.id=${redPackageData.id }&userId=${userId}&type=1&createOrEdit=edit&step=1" data-redPackageId="${redPackageData.id }">修改红包</a>
									<a style="margin-left:20px" class="btn_gray deleteRedP" href="###" data-redPackageId="${redPackageData.id }">删除红包</a>
								</li>
								<li>
									<a style="margin-top:20px" class="btn_blue" data-redPackageId="${redPackageData.id }" href="${root}/siims/vmaque/redPackage/toRedPackageHistoryList.jspx?snatchPackageUserData.redpackageId=${redPackageData.id}">红包使用情况</a>
								</li>
							</ul>
							</div>
						</div>
						<div class="RBtnTab">
   		 					<img src="${(redPackageData.packageTwoCode)?default("")}">
   		 					<a style="margin-left: 84px;margin-top: 8px" class="btn_blue" target="_blank" href="${root}/siims/vmaque/printrTwoCode/printRTwoCode.jspx?id=${redPackageData.id}">打印二维码</a>
   		 				</div> 
					</div>
				</#list>
			</#if>
  			</div>
			<#if (redPackageContentDatas?size<0)>
     		 <div class="DataStatistics_box" style="margin-bottom: 20px;">
     		   <h1> 您还没有选用服务 !</h1>
     		 </div>
    		</#if>
  			<#include "../util/pageRoll.ftl">
  			</form>
</body> 
</html>