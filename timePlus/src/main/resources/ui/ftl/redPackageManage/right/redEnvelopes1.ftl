<!DOCTYPE html>
<html>
<head>
<title >商站宝</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
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
	<div style="height:40px; line-height:40px;"><img src="${root}/images/redPackage/u144.png" width="12px" height="13px" style="margin-left:5px;" />
		<span id="businessName" style="color: #ffffff;font-size: 15px; margin-left: 5px; font-family: '微软雅黑 Bold', '微软雅黑';">${redPackageContentData.businessName}</span>
	</div>
	<div style="background:#F55641; height:65px; width:95%; margin: 5px auto; margin-bottom:0px; -moz-border-radius-topleft: 10px;-moz-border-radius-topright: 10px;-webkit-border-top-left-radius: 10px;-webkit-border-top-right-radius: 10px;">
		<div style="line-height:65px; text-align:center; font-family: '微软雅黑 Regular', '微软雅黑'; font-weight: 400; color: #F9E152;font-size: 20px;" id="businessName">${redPackageContentData.businessName}</div>
	</div>
	<div style="width:95%; margin:0 auto; background:#FFFFFF; text-align:center; height:200px;">
		<img id="packageImg" src="${root}${redPackageContentData.packageImg}" style="width: 150px;height: 150px;margin-top: 25px;" />
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
