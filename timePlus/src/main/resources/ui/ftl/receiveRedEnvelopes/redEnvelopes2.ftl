<!DOCTYPE html>
<html>
<head>
<title >商站宝</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<#include "/ui/ftl/util/variable.ftl"/>
<link rel="stylesheet" type="text/css" href="${root}/wro/red.receiveRedEnvelopes.css"/>
<script type="text/javascript" src="${root}/wro/jquery.base.js"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="${root}/wro/red.shareRedPackage.js"></script>
</head>
<body>
<input type="hidden" value="${(redPackageData.id)?default("")}" id="redPackageId"/>
<input type="hidden" value="${(redPackageData.packageLanguage)?default("")}" id="packageLanguage"/>
<input type="hidden" value="${(redPackageData.businessName)?default("")}" id="businessName"/>
<input type="hidden" value="${(redPackageData.packageImg)?default("")}" id="packageImg"/>
<input type="hidden" value="${(collarPackageUserData.id)?default("")}" id="collarPackageId"/>
<div id="redPackAgeMaskRule">
	<div class="redPackAgeMaskBg" style="display:none;">
	</div>
	<div class="redPackAgeRuleBg" style="display:none;">
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
<div id="redPackAgeMaskfenxiang" style="display:none;">
	<div class="redPackAgeMaskBg" style="display:none;">
	</div>
	<div style="width: 100%; position: absolute; left: 10%; z-index: 999;"><img src="${root}/images/snatchPackage/image_u79.png" width="100%" height="100%" /></div>
</div>
<div class="u4">
  <div class="u10">
    <div class="redPackAgeContentTitle">
		<span>点击进入<a href="${(redPackageData.packageForPageUrl)?default("#")}">${(redPackageData.businessName)?default("")}</a></span>
	</div>
    <div class="redPackAgeContentfont">
      <div class="redPackAgeContentGongxi">恭喜您！</div>
      <div class="redPackAgeContentText"> 恭喜您领到了${(collarPackageUserData.collarPackageNum)?default("")}个红包，快转发给小伙伴吧。您的小伙伴每使用一个红包后，商家会给您${redPackageData.sharesReward}元加成喔。积少成多，可以享受消费免单！</div>
    </div>
    <div class="redPackAgeContentInfo">
      <div style="width: 57%;height: 30%;margin: 0 auto;"><a class="redPackAgeContentInfoBtn" id="fenxiang">分享红包给小伙伴</a></div>
      <div class="redPackAgeContentInfoFont">分享红包后仍可参与抢红包呦~</div>
    </div>
    <div class="redPackAgeContentImgDiv">
      <div class="redPackAgeContentImgLeft"><img src="${root}/images/snatchPackage/rectangle_u41.png" width="100%" height="100%" /></div>
      <div class="redPackAgeContentImgRight"><img src="${root}/images/snatchPackage/rectangle_u43.png" width="100%" height="100%" /></div>
    </div>
    <div class="redPackAgeContentRule" id="openRule">红包使用规则</div>
    <div class="redPackAgeBottom"> 本页面由&nbsp;&nbsp;<a href="${mainSystemPath}">商站宝</a>&nbsp;&nbsp;提供技术支持 </div>
  </div>
</div>
</body>
</html>
