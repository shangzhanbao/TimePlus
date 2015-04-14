<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<#include "/ui/ftl/util/variable.ftl"/>
<title>编辑红包第四步</title>
<link href="${root}/wro/red.redPackage.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${root}/wro/jquery.min.js"></script>
<script type="text/javascript" src="${root}/wro/red.redPackage.js"></script>
</head>

<body style="margin-top:0px;">
	<div class="redEnvelopesTitle">
		<h1>编辑红包</h1>
	</div>
	<div>
		<div class="redEnvelopesTop">
			<div class="redEnvelopesTopDivImgFirst"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u75.png" /></div>
			<div class="redEnvelopesTopDivLable">编辑红包宣传信息</div>
			<div class="redEnvelopesTopDivLable"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u74.png" /></div>
			<div class="redEnvelopesTopDivLable">编辑红包详情</div>
			<div class="redEnvelopesTopDivLable"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u78.png" /></div>
			<div class="redEnvelopesTopDivLable">添加红包链接</div>
			<div class="redEnvelopesTopDivLable"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u103.png" /></div>
			<div class="redEnvelopesTopDivLable redEnvelopesTopDivLableBlod">编辑红包规则</div>
		</div>
		<div class="redEnvelopesTitleLine">
			<div style="margin-left:550px; width:150px;" class="redEnvelopesTitleLineStep"></div>
		</div>
	</div>
	<div style="width: 790px;">
		<div class="redEnvelopesLeft">
			<div class="redEnvelopesLeftIfarme">
				<iframe scrolling="no" frameborder="0" name="redEnvelopesRight" width="100%" height="100%" src="${root}/siims/vmaque/redPackage/skipRedPackageRight.jspx?step=4&type=0&redPackageContentData.id=${redPackageContentData.id}"></iframe>
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
							<span>*</span>红包名称：
						</div>
						<div class="redEnvelopesRightFormInpDiv">
							<input type="text" class="redEnvelopesRightFormInpName" onblur="editRight(this)" id="packageName" name="redPackageContentData.packageName" value="${redPackageContentData.packageName}" />
						</div>
						<div class="redEnvelopesRightFormLine"></div>
						<div class="redEnvelopesRightFormFont">
							<span>*</span>红包规则：
						</div>
						<div class="redEnvelopesRightFormInpDiv">
							<input type="hidden" id="packageRuleTrue" name="redPackageContentData.packageRule" />
							<textarea class="redEnvelopesRightFormTexa" onblur="editRight(this)" id="packageRule" >${redPackageContentData.packageRule }</textarea>
						</div>
						<div style="margin:20px auto; width:100px;">
							<input type="button" step="4" class="redEnvelopesRightCompleteBtn" value="完成" />
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="redEnvelopesEditBtn">编辑</div>
		<div class="redEnvelopesBackFont">上一步</div>
		<div class="redEnvelopesBackBtn" onclick="jumpStep('3','true')"><</div>
		<div class="redEnvelopesNextFont">生成红包</div>
		<div class="redEnvelopesNextBtn" onclick="jumpStep('5','true')">></div>
	</div>
</body>
</html>
