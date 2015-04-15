<!DOCTYPE html>
<html>
<head>
<title>商站宝－－抢红包</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<#include "/ui/ftl/util/variable.ftl"/>
<link rel="stylesheet" type="text/css" href="${root}/wro/red.receiveRedEnvelopes.css"/>
<script type="text/javascript" src="${root}/wro/jquery.base.js"></script>
<script type="text/javascript" src="${root}/wro/red.snarchPackage.js"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="${root}/wro/red.shareRedPackage.js"></script>
</head>
<body>
	<input type="hidden" value="${(redPackageData.id)?default("")}" id="redPackageId"/>
	<input type="hidden" value="${(redPackageData.packageLanguage)?default("")}" id="packageLanguage"/>
	<input type="hidden" value="${(redPackageData.businessName)?default("")}" id="businessName"/>
	<input type="hidden" value="${(redPackageData.packageImg)?default("")}" id="packageImg"/>
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
	<div id="redPackAgeMaskPhone">
		<div class="redPackAgeMaskBg">
		</div>
		<div class="redPackAgePhoneBg">
			<div id="erroHtml"></div>
			<div class="redPackAgePhoneTextDiv"><input type="text" id="snatchUserPhone" placeholder="请输入抢红包手机号" class="redPackAgePhoneText" /></div>
			<div align="center"><input type="button" onclick="submitForm()" class="redPackAgePhoneBtn" value="完成" /></div>
		</div>
	</div>
	<input id="collarPackageId" value="${(collarPackageId)?default("")}" type="hidden"/>
	<input id="redPackageId" value="${(redPackageData.id)?default("")}" type="hidden"/>
	<div class="u4">
		<div class="u10">
			<div class="redPackAgeContentTitle">
				<span>点击进入<a href="${(redPackageData.packageForPageUrl)?default("#")}">${(redPackageData.businessName)?default("")}</a></span>
			</div>
			<div class="redPackAgeContentImg">
				<img src="${(redPackageData.packageImg)?default("")}"  />
			</div>
			<div class="redPackAgeContentInfo">
				<div class="redPackAgeContentInfo_div"><a class="redPackAgeContentInfoBtn" id="snarchPackage">立即抢红包</a></div>
				<div class="redPackAgeContentInfoFont">${(redPackageData.packageLanguage)?default("")}</div>
			</div>
			<div class="redPackAgeContentImgDiv">
				<div class="redPackAgeContentImgLeft"><img src="${root}/images/snatchPackage/rectangle_u41.png" width="100%" height="100%" /></div>
				<div class="redPackAgeContentImgRight"><img src="${root}/images/snatchPackage/rectangle_u43.png" width="100%" height="100%" /></div>
			</div>
			<div class="redPackAgeContentRule" id="openRule">红包使用规则</div>
			<div class="redPackAgeBottom">
				本页面由&nbsp;&nbsp;<a href="${mainSystemPath}">商站宝</a>&nbsp;&nbsp;提供技术支持
			</div>
		</div>
	</div>				
</body>
</html>
