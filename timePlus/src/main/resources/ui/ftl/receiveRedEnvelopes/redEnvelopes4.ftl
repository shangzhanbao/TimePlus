<!DOCTYPE html>
<html>
<head>
<title>商站宝－－领红包</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<#include "/ui/ftl/util/variable.ftl"/>
<link rel="stylesheet" type="text/css" href="${root}/wro/red.snarchPackageSuccess.css"/>
<script type="text/javascript" src="${root}/wro/jquery.base.js"></script>

</head>
<body>
<div id="redPackAgeMaskRule" style="display:none;">
	<div class="redPackAgeMaskBg">
	</div>
	<div class="redPackAgeRuleBg">
		<div style="height:30px;">
			<div class="redPackAgeRuleTitle">红包使用规则</div>
			<div class="redPackAgeRuleClose" id="closeRule">×</div>
		</div>
		<div class="redPackAgeRuleLine"></div>
		<div class="redPackAgeRuleContent">
		</div>
	</div>
</div>
<div class="u4">
  	<div class="u10">
		   <div class="redPackAgeContentTitle">
			<img src="${root}/images/snatchPackage/u61.png" />
		 </div>
	    <div>
	      <div class="grabNoHave">领光了！</div>
	      <div class="grabNoNaveContent" >您来晚了，红包已经被领光了！先去我们的商战看看吧~</div>
	      <div  class="div12">
	      	<a href="${(redPackageData.packageForPageUrl)?default("#")}" class="redPackAgeContentInfoBtn" style="width:40%;">去看看</a>
	      </div>
	    </div>
  				<div class="redPackAgeContentInfo_1" >
					<div class="redPackAgeContentInfoFont_1">您来晚了，红包已经被领光了！先去我们的商战看看吧~</div>
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
