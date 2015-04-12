<!DOCTYPE html>
<html>
<head>
<title>商站宝－－抢红包</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<#include "/ui/ftl/util/variable.ftl"/>
<link rel="stylesheet" type="text/css" href="${root}/wro/red.snarchPackageSuccess.css"/>
<script type="text/javascript" src="${root}/wro/jquery.base.js"></script>
<script type="text/javascript" src="${root}/wro/red.snarchPackage.js"></script>

</head>
<body>
<div id="redPackAgeMaskRule">
	<div class="redPackAgeMaskBg">
	</div>
	<div class="redPackAgeRuleBg">
		<div style="height:30px;">
			<div class="redPackAgeRuleTitle">红包使用规则</div>
			<div class="redPackAgeRuleClose" id="closeRule">×</div>
		</div>
		<div class="redPackAgeRuleLine"></div>
		<div class="redPackAgeRuleContent">
			${(redPackageData.packageRule)?default("")}
		</div>
	</div>
</div>
<div class="u4">
  <div class="u10">
    <div class="redPackAgeContentTitle">
		<img src="${root}/images/snatchPackage/u61.png" />
	</div>
    <div>
      <div class="grabNoHave">抢光了！</div>
      <div class="grabNoNaveContent">您来晚了，红包已经被抢光了！先去我们的商战看看吧~</div>
      <div style="width: 40%;margin: 20px auto;"><a href="${(redPackageData.packageForPageUrl)?default("#")}" class="redPackAgeContentInfoBtn" style="position: inherit;width:100%;">去看看</a></div>
    </div>
    <div class="redPackAgeContentInfo" style="margin-top:0px;">
		<div class="grabPeople">小伙伴们抢到的红包</div>
		<#list userList as user>
		<#if !((user_index+1)%2 == 0)>
		<div class="gradPeoplePhone1">
			<div style="float:left; margin-left:10px;">${user.snatchUserPhone?substring(0,3)}****${user.snatchUserPhone?substring(7,11)}</div>
			<div style="float:right; margin-right:10px;">${user.snarchPrice}元</div>
		</div>
		</#if>
		<#if ((user_index+1)%2 == 0)>
		<div class="gradPeoplePhone2">
			<div style="float:left; margin-left:10px;">${user.snatchUserPhone?substring(0,3)}****${user.snatchUserPhone?substring(7,11)}</div>
			<div style="float:right; margin-right:10px;">${user.snarchPrice}元</div>
		</div>
		</#if>
		</#list>
      <div style="height:50px;"></div>
    </div>
    <div class="redPackAgeContentImgDiv">
      <div class="redPackAgeContentImgLeft"><img src="${root}/images/snatchPackage/rectangle_u41.png" width="100%" height="100%" /></div>
      <div class="redPackAgeContentImgRight"><img src="${root}/images/snatchPackage/rectangle_u43.png" width="100%" height="100%" /></div>
    </div>
    <div class="redPackAgeContentRule" id="openRule">红包使用规则</div>
  </div>
  <div class="redPackAgeBottom"> 本页面由&nbsp;&nbsp;<a href="${mainSystemPath}">商站宝</a>&nbsp;&nbsp;提供技术支持 </div>
</div>
</body>
</html>
