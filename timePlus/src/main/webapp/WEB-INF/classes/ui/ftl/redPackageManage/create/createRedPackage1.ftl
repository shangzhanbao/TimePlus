<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<#include "/ui/ftl/util/variable.ftl"/>
<title>创建红包第一步</title>
<link href="${root}/wro/red.redPackage.css" type="text/css" rel="stylesheet" />


<link rel="stylesheet" type="text/css" href="${root}/js/uploadImgUtil/css/bombBox.css">
<link rel="stylesheet" type="text/css" href="${root}/js/uploadImgUtil/css/jquery.Jcrop.css">
<link rel="stylesheet" type="text/css" href="${root}/js/uploadImgUtil/css/upload-btn.css">
<link rel="stylesheet" type="text/css" href="${root}/js/uploadImgUtil/css/uploadImg.css">

<script type="text/javascript" src="${root}/wro/jquery.min.js"></script>
<script type="text/javascript" src="${root}/wro/red.redPackage.js"></script>
<script type="text/javascript" src="${root}/wro/jquery.ajaxUpload.js"></script>

<script type="text/javascript" src="${root}/js/uploadImgUtil/js/jquery.Jcrop.min.js"></script>
<script type="text/javascript" src="${root}/js/uploadImgUtil/js/bombBoxUtil.js"></script>
<script type="text/javascript" src="${root}/js/uploadImgUtil/js/uploadImg.js"></script>
</head>

<body style="margin-top:0px;">
<div>
	<div class="redEnvelopesTitle">
		<h1>创建红包</h1>
	</div>
	<div>
		<div class="redEnvelopesTop">
			<div class="redEnvelopesTopDivImgFirst"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u70.png" /></div>
			<div class="redEnvelopesTopDivLable redEnvelopesTopDivLableBlod">编辑红包宣传信息</div>
			<div class="redEnvelopesTopDivLable"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u74.png" /></div>
			<div class="redEnvelopesTopDivLable">编辑红包详情</div>
			<div class="redEnvelopesTopDivLable"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u78.png" /></div>
			<div class="redEnvelopesTopDivLable">添加红包链接</div>
			<div class="redEnvelopesTopDivLable"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u82.png" /></div>
			<div class="redEnvelopesTopDivLable">编辑红包规则</div>
		</div>
		<div class="redEnvelopesTitleLine">
			<div style="margin-left:45px;" class="redEnvelopesTitleLineStep"></div>
		</div>
	</div>
	<div style="width: 790px;">
		<div class="redEnvelopesLeft">
			<div class="redEnvelopesLeftIfarme">
				<iframe scrolling="no" frameborder="0" name="redEnvelopesRight" width="100%" height="100%" src="${root}/siims/vmaque/redPackage/skipRedPackageRight.jspx?step=1&type=0&redPackageContentData.id=${redPackageContentData.id}"></iframe>
			</div>
		</div>
		<div class="redEnvelopesRight">
			<div class="redEnvelopesRightDivImg"></div>
			<div class="redEnvelopesRightDivImgFrame">
				<div class="redEnvelopesRightFormDiv">
					<form name="redEnvelopesForm" id="redEnvelopesForm" method="post" action="${root}/siims/vmaque/redPackage/ajaxPreserveRedPackage.jspx?isadd=true">
						<input type="hidden" id="id" name="redPackageContentData.id" value="${redPackageContentData.id}" />
						<div id="errorMsg" style="color:red; font-size:14px; text-align:center; display: none;"></div>
						<div id="errorMsg" class="error">
						</div>
						<div class="redEnvelopesRightFormFont">
							<span>*</span>商家名称：
						</div>
						<div class="redEnvelopesRightFormInpDiv">
							<input type="text" id="businessName" onblur="editRight(this)" placeholder="请填写商家名称" name="redPackageContentData.businessName" value="${redPackageContentData.businessName}" class="redEnvelopesRightFormInpName" />
						</div>
						<div class="redEnvelopesRightFormLine"></div>
						<div class="redEnvelopesRightFormFont">
							<span>*</span>宣传图片：
						</div>
						<div class="upload_div">
							<input type="hidden" id="packageImg" name="redPackageContentData.packageImg" value="${redPackageContentData.packageImg}" />
							<div class="line">
								<span class="span">
									<input name="" placeholder="请选择图片" type="text" id="viewfile" class="inputstyle">
								</span>
								<label for="unload" class="file_btn">浏览</label>
								<input type="file" id="uploadimg" name="uploadImg" accept="image/jpeg,image/png"  onchange="changeFile(this)" class="file" />
							</div>
							<input type="hidden" id="clickImg" />
						</div>
						<div class="redEnvelopesRightFormLine"></div>
						<div  class="redEnvelopesRightFormFont">
							<span>*</span>红包宣传语：
						</div>
						<div class="redEnvelopesRightFormInpDiv">
							<textarea class="redEnvelopesRightFormTexaName" id="packageLanguage" placeholder="请填写红包宣传语" onblur="editRight(this)" name="redPackageContentData.packageLanguage">${redPackageContentData.packageLanguage }</textarea>
						</div>
						<div style="margin:20px auto; width:100px;">
							<input type="button" step="1" class="redEnvelopesRightCompleteBtn" value="完成" />
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="redEnvelopesEditBtn">编辑</div>
		<div class="redEnvelopesBackFont">上一步</div>
		<div class="redEnvelopesBackBtn"><</div>
		<div class="redEnvelopesNextFont">下一步</div>
		<div class="redEnvelopesNextBtn" onclick="jumpStep('2','false')">></div>
	</div>
</body>
</html>
