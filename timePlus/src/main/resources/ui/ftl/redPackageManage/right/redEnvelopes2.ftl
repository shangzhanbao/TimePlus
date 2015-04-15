<!DOCTYPE html>
<html>
<head>
<title >商站宝</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<#include "/ui/ftl/util/variable.ftl"/>
<style type="text/css">
	body {
		background:#343131;
		margin:0;
		padding:0;
	}
</style>
</head>
<body>


<div style="width:245px; height:430px; margin:0 auto;">
	<div style="height:40px; line-height:40px;"><img src="${root}/images/redPackage/u144.png" width="12px" height="13px" />
		<span id="businessName" style="color: #ffffff;font-size: 15px; margin-left: 5px; font-family: '微软雅黑 Bold', '微软雅黑';">${redPackageContentData.businessName}</span>
	</div>
	<div style="background:#F55641; height:65px; width:95%; margin: 5px auto; margin-bottom:0px; -moz-border-radius-topleft: 10px;-moz-border-radius-topright: 10px;-webkit-border-top-left-radius: 10px;-webkit-border-top-right-radius: 10px;">
		<div style="line-height:65px; text-align:center; font-family: '微软雅黑 Regular', '微软雅黑'; font-weight: 400; color: #F9E152;font-size: 20px;" id="businessName">${redPackageContentData.businessName}</div>
	</div>
	<div style="width:95%; margin:0 auto; background:#FFFFFF; text-align:center; height:200px;font-family: '微软雅黑 Regular', '微软雅黑';font-size: 14px;text-align: center;font-weight: 400;color: #333333; ">
		<div style="padding-top:50px;">
		恭喜您成功创建了<label style="color:red;" id="packageNum">${redPackageContentData.packageNum}</label>个红包。<br />
		每个红包限额为<lable style="color:red;" id="packageMinPrice">${redPackageContentData.packageMinPrice}</lable>-<lable style="color:red;" id="packageMaxPrice">${redPackageContentData.packageMaxPrice}</lable>元。<br />
		对分享人员的激励额度为<label style="color:red;" id="sharesReward">${redPackageContentData.sharesReward}</label>元。<br />
		红包截至日期：<label style="color:red;" id="validTime">${redPackageContentData.validTime?string("yyyy年MM月dd日")}</label>。
		</div>
	</div>
	<div style="background:#F7DA65; height:75px; width:95%; margin:0 auto;text-align: center;">
		<div id="packageLanguage" style="font-family: 'microsoft yahei', simhei;font-weight: 400;font-style: normal;font-size: 15px;color: #333333; padding-top:5px;">${redPackageContentData.packageLanguage}</div>
	</div>
	<div style="width:95%; margin:-38px auto; height:38px;">
		<div style="background:url(${root}/images/redPackage/rectangle_u41.png); width: 90px; height: 38px; float:left;"></div>
		<div style="background:url(${root}/images/redPackage/rectangle_u43.png); width: 90px; height: 38px; float:right;"></div>
	</div>
	<div style="margin:37px auto; margin-bottom: 0px; width:95%; height:40px;">
		<div style="background:#F55641; height:40px;-moz-border-radius-bottomright: 10px;-moz-border-radius-bottomleft: 10px;-webkit-border-bottom-left-radius: 10px;
-webkit-border-bottom-right-radius: 10px;"></div>
	</div>
</div>
</body>
</html>
