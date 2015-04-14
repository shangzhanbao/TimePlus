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
<script type="text/javascript" src="${root}/wro/red.snarchPackageSuccess.js"></script>
<script type="text/javascript" src="${root}/wro/red.snarchPackage.js"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="${root}/wro/red.shareRedPackage.js"></script>

</head>
<body>
<input type="hidden" value="${(redPackageData.id)?default("")}" id="redPackageId"/>
<input type="hidden" value="${(redPackageData.packageLanguage)?default("")}" id="packageLanguage"/>
<input type="hidden" value="${(redPackageData.businessName)?default("")}" id="businessName"/>
<input type="hidden" value="${(redPackageData.packageImg)?default("")}" id="packageImg"/>
<input type="hidden" value="${(collarPackageId)?default("")}" id="collarPackageId"/>
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
    	<span>点击进入<a href="${(redPackageData.packageForPageUrl)?default("#")}">${(redPackageData.businessName)?default("")}</a></span>
    </div>
    <div>
      <div class="grabMoney">${price}元</div>
      <div class="grabWelcome">恭喜您！</div>
      <div class="grabContent">成功抢到<span>${price}元</span>${(redPackageData.businessName)?default("")}红包抵现券。红包已经与您的微信账号关联，请添加我们的微信公众账号shangzhanbao进行查看。</div>
      <div style="width: 57%;margin: 20px auto;"><a href="${(redPackageData.packageForPageUrl)?default("#")}" class="redPackAgeContentInfoBtn">立即使用红包</a></div>
    </div>
    <div class="redPackAgeContentInfo">
		<div class="grabPeople">小伙伴们抢到的红包</div>
		<#list userList as user>
		<#if ((user_index+1) > 1)>
		<#if !((user_index+1)%2 == 0)>
		<div class="gradPeoplePhone2">
			<div style="float:left; margin-left:10px;">${user.snatchUserPhone?substring(0,3)}****${user.snatchUserPhone?substring(7,11)}</div>
			<div style="float:right; margin-right:10px;">${user.snarchPrice}元</div>
		</div>
		</#if>
		<#if ((user_index+1)%2 == 0)>
		<div class="gradPeoplePhone1">
			<div style="float:left; margin-left:10px;">${user.snatchUserPhone?substring(0,3)}****${user.snatchUserPhone?substring(7,11)}</div>
			<div style="float:right; margin-right:10px;">${user.snarchPrice}元</div>
		</div>
		</#if>
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
