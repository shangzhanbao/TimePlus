<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<#include "/ui/ftl/util/variable.ftl"/>
<title>编辑红包第三步</title>
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
			<div class="redEnvelopesTopDivLable"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u83.png" /></div>
			<div class="redEnvelopesTopDivLable redEnvelopesTopDivLableBlod">添加红包链接</div>
			<div class="redEnvelopesTopDivLable"><img class="redEnvelopesTopDivImg" src="${root}/images/redPackage/image_u82.png" /></div>
			<div class="redEnvelopesTopDivLable">编辑红包规则</div>
		</div>
		<div class="redEnvelopesTitleLine">
			<div style="margin-left:400px; width:150px;" class="redEnvelopesTitleLineStep"></div>
		</div>
	</div>
	<div style="width: 790px;">
		<div class="redEnvelopesLeft">
			<div class="redEnvelopesLeftIfarme">
				<iframe scrolling="no" frameborder="0" name="redEnvelopesRight" width="100%" height="100%" src="${root}/siims/vmaque/redPackage/skipRedPackageRight.jspx?step=3&type=0&redPackageContentData.id=${redPackageContentData.id}"></iframe>
			</div>
		</div>
		<div class="redEnvelopesRight">
			<div class="redEnvelopesRightDivImg"></div>
			<div class="redEnvelopesRightDivImgFrame">
				<div class="redEnvelopesRightFormDiv">
					<form name="redEnvelopesForm" id="redEnvelopesForm" method="post" action="${root}/siims/vmaque/redPackage/ajaxPreserveRedPackage.jspx?isadd=false">
						<input type="hidden" id="userId" name="redPackageContentData.userId" value="${redPackageContentData.userId}" />
						<input type="hidden" id="id" name="redPackageContentData.id" value="${redPackageContentData.id}" />
						<input type="hidden" id="pageId" name="redPackageContentData.pageId" value="" />
						<div id="errorMsg" style="color:red; font-size:14px; text-align:center; display: none;"></div>
						<div class="redEnvelopesEditLable">添加链接<lable>（非必填项）</lable></div>
						<div class="redEnvelopesEditMoney">
							<div style="position:relative; margin-top: 30px;">  
								<span style="margin-left:90px;width:18px;overflow:hidden;">  
									<select id="pageDomain" style="width: 200px;margin-left: -90px;height: 24px;border: 1px solid #A9A9A9;" onchange="changeVal(this)">  
									<option value="#">---请选择域名---</option>
									<#assign data=returnJson?eval />
									<#list data as json>
										<option value="${mainSystemPath}/pagehtml/${json.domain}" pageData="${json.pageId}">${mainSystemPath}/pagehtml/${json.domain}</option>
									</#list>
									</select>
								</span>	
								<input type="text" id="domain_inp" value="${redPackageContentData.packageForPageUrl}" onblur="editRight(this)" name="redPackageContentData.packageForPageUrl" class="redEnvelopesEditLink" />
							</div>
						</div>
						<div class="redEnvelopesEditLable" style="font-size: 12px;margin-top: 20px;color: red;">*若您为在线销售的商家，请务必添加商站链接以保证用户可以使用该红包</div>
						<div class="redEnvelopesEditLinkLable"><a href="${mainSystemPath}/page_manage/key/toCreatePage?id=ff808081461cf1ef01461dd929f501fd&userData.id=" target="_top">还没有微站？去创建微站</a></div>
						<div style="margin:160px auto; width:100px;">
							<input type="button" step="3" class="redEnvelopesRightCompleteBtn" value="完成" />
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="redEnvelopesEditBtn">编辑</div>
		<div class="redEnvelopesBackFont">上一步</div>
		<div class="redEnvelopesBackBtn" onclick="jumpStep('2','true')"><</div>
		<div class="redEnvelopesNextFont">下一步</div>
		<div class="redEnvelopesNextBtn" onclick="jumpStep('4','true')">></div>
	</div>
</body>
</html>
