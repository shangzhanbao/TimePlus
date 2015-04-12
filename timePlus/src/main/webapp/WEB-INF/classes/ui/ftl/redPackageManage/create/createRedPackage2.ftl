<#setting number_format="#">
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<#include "/ui/ftl/util/variable.ftl"/>
<title>创建红包第二步</title>
<link href="${root}/wro/red.redPackage.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${root}/wro/jquery.min.js"></script>
<script type="text/javascript" src="${root}/wro/red.redPackage.js"></script>
<script type="text/javascript" src="${root}/js/timer/WdatePicker.js"></script>
</head>

<body style="margin-top:0px;">
	<div class="redEnvelopesTitle">
		<h1>创建红包</h1>
	</div>
	<div>
		<div class="redEnvelopesTop">
			<div class="redEnvelopesTopDivImgFirst"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u75.png" /></div>
			<div class="redEnvelopesTopDivLable">编辑红包宣传信息</div>
			<div class="redEnvelopesTopDivLable"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u79.png" /></div>
			<div class="redEnvelopesTopDivLable redEnvelopesTopDivLableBlod">编辑红包详情</div>
			<div class="redEnvelopesTopDivLable"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u78.png" /></div>
			<div class="redEnvelopesTopDivLable">添加红包链接</div>
			<div class="redEnvelopesTopDivLable"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u82.png" /></div>
			<div class="redEnvelopesTopDivLable">编辑红包规则</div>
		</div>
		<div class="redEnvelopesTitleLine">
			<div style="margin-left:240px; width:150px;" class="redEnvelopesTitleLineStep"></div>
		</div>
	</div>
	<div style="width: 790px;">
		<div class="redEnvelopesLeft">
			<div class="redEnvelopesLeftIfarme">
				<iframe scrolling="no" frameborder="0" name="redEnvelopesRight" width="100%" height="100%" src="${root}/siims/vmaque/redPackage/skipRedPackageRight.jspx?step=2&type=0&redPackageContentData.id=${redPackageContentData.id}"></iframe>
			</div>
		</div>
		<div class="redEnvelopesRight">
			<div class="redEnvelopesRightDivImg"></div>
			<div class="redEnvelopesRightDivImgFrame">
				<div class="redEnvelopesRightFormDiv">
					<form name="redEnvelopesForm" id="redEnvelopesForm" method="post" action="${root}/siims/vmaque/redPackage/ajaxPreserveRedPackage.jspx?isadd=false">
						<input type="hidden" id="id" name="redPackageContentData.id" value="${redPackageContentData.id}" />
						<div id="errorMsg" style="color:red; font-size:14px; text-align:center; display: none;"></div>
						<div class="redEnvelopesRightFormFont">
							<span>*</span>红包个数：
						</div>
						<div class="redEnvelopesRightFormInpDiv">
							<input type="button" onclick="decreaseNum()" class="redEnvelopesEditMoneyBtn" value="-" />
							<input type="text" onblur="editRight(this)" class="redEnvelopesEditMoneyNum" onkeyup="this.value=this.value.replace(/[^\d]/g,'') "onbeforepaste="this.value=this.value.replace(/\D/g,'')" id="packageNum" name="redPackageContentData.packageNum" value="${redPackageContentData.packageNum}" />
							<input type="button" onclick="raiseNum()" class="redEnvelopesEditMoneyBtn" value="+" />
						</div>
						<div class="redEnvelopesRightFormLine"></div>
						<div class="redEnvelopesRightFormFont">
							<span>*</span>单个红包金额范围：
						</div>
						<div class="redEnvelopesRightFormInpDiv">
							<input type="text" id="packageMinPrice" onblur="editRight(this)" value="${redPackageContentData.packageMinPrice}" name="redPackageContentData.packageMinPrice" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onbeforepaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" class="redEnvelopesEditMoneyRange" />
							<img src="${root}/images/redPackage/u66_line.png" />
							<input type="text" id="packageMaxPrice" onblur="editRight(this)" value="${redPackageContentData.packageMaxPrice}" name="redPackageContentData.packageMaxPrice" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onbeforepaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" class="redEnvelopesEditMoneyRange" />
						</div>
						<div class="redEnvelopesRightFormLine"></div>
						<div class="redEnvelopesRightFormFont">
							对分享红包人员的奖励金额：
						</div>
						<div class="redEnvelopesRightFormInpDiv">
							<input type="text" id="sharesReward" onblur="editRight(this)" value="${redPackageContentData.sharesReward}" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onbeforepaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" name="redPackageContentData.sharesReward" class="redEnvelopesEditMoneyReward" />
						</div>
						<div class="redEnvelopesRightFormLine"></div>
						<div class="redEnvelopesRightFormFont">
							<span>*</span>红包有效期：
						</div>
						<div class="redEnvelopesRightFormInpDiv">
							<input type="text" onblur="editRight(this)" id="validTime" name="redPackageContentData.validTime" value="${redPackageContentData.validTime?string("yyyy年MM月dd日")}" onclick="WdatePicker({dateFmt:'yyyy年MM月dd日',minDate:'${redPackageContentData.validTime?string("yyyy年MM月dd日")}'})" class="redEnvelopesEditTime" />
						</div>
						<div style="margin:20px auto; width:100px;">
							<input type="button" step="2" class="redEnvelopesRightCompleteBtn" value="完成" />
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="redEnvelopesEditBtn">编辑</div>
		<div class="redEnvelopesBackFont">上一步</div>
		<div class="redEnvelopesBackBtn" onclick="jumpStep('1','false')"><</div>
		<div class="redEnvelopesNextFont">下一步</div>
		<div class="redEnvelopesNextBtn" onclick="jumpStep('3','false')">></div>
	</div>
</body>
</html>
