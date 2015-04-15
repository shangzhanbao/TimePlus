$(function(){
	var url = mainSystemPath+"/view/pages/mini/commonality/proxy.html",
	h = 900,
	ifm = $("<iframe style='border:0;width:0px;height:0;display:none;'></iframe>").appendTo(document.body);
	ifm.attr("src", url + "#" + h);
	
	$(".redEnvelopesRight").fadeIn();
	$(".redEnvelopesLeft").animate({marginLeft: '60px'});
	$(".redEnvelopesEditBtn").fadeOut();
	$(".redEnvelopesNextBtn").fadeOut();
	$(".redEnvelopesBackBtn").fadeOut()
	//点击编辑按钮事件
	$(".redEnvelopesEditBtn").on("click",function(){
		$(".redEnvelopesRight").fadeIn(500);
		$(".redEnvelopesLeft").animate({marginLeft: '60px'}, 500);
		$(".redEnvelopesEditBtn").fadeOut();
		$(".redEnvelopesNextBtn").fadeOut();
		$(".redEnvelopesBackBtn").fadeOut()
	});
	
	//点击完成按钮事件
	$(".redEnvelopesRightCompleteBtn").on("click",function(){
		var step = $(this).attr("step");//当前为第几步操作

		//验证第一步
		if(step == "1"){
			//验证商家名称是否为空
			if($("#businessName").val()==""){
				$("#errorMsg").html("商家名称不能为空！");
				$("#errorMsg").show();
				return;
			}
			//验证红包宣传语是否为空
			if($("#packageLanguage").val()==""){
				$("#errorMsg").html("红包宣传语不能为空！");
				$("#errorMsg").show();
				return;
			}
			//验证宣传图片是否为空
			if($("#packageImg").val()==""){
				$("#errorMsg").html("请上传宣传图片！");
				$("#errorMsg").show();
				return;
			}
		}
		//验证第二步
		if(step == "2"){
			//验证红包个数是否为空
			if($("#packageNum").val()==""){
				$("#errorMsg").html("红包个数不能为空！");
				$("#errorMsg").show();
				return;
			}
			//验证红包金额范围
			if($("#packageMinPrice").val()==""){
				$("#errorMsg").html("请输入红包最小金额！")
				$("#errorMsg").show();
				return;
			}
			if($("#packageMaxPrice").val()==""){
				$("#errorMsg").html("请输入红包最大金额！")
				$("#errorMsg").show();
				return;
			}
			if(parseInt($("#packageMaxPrice").val()) < parseInt($("#packageMinPrice").val())){
				$("#errorMsg").html("红包最大金额不能小于最小金额！");
				$("#errorMsg").show();
				return;
			}
			if($("#validTime").val()==""){
				$("#errorMsg").html("请选择红包到期时间！");
				$("#errorMsg").show();
				return;
			}
		}
		//验证第三步
		if(step=="3"){
			var domain=$("#domain_inp").val();
			if(domain!=""){
				if(checkdomain(domain)==false){
					$("#errorMsg").html("你输入的独立域名不合格！请重新输入");
					$("#errorMsg").show();
					return ;
				}
			}
			$("#pageDomain").find("option").each(function(){
				if($(this).val() == domain){
					$("#pageId").val($(this).attr("pageData"));
				}
			});
		}
		//验证第四步
		if(step == "4"){
			if($("#packageName").val()==""){
				$("#errorMsg").html("请输入红包名称！");
				$("#errorMsg").show();
				return;
			}
			if($("#packageRule").val()==""){
				$("#errorMsg").html("请输入红包规则！");
				$("#errorMsg").show();
				return;
			}
			$("#packageRuleTrue").val($("#packageRule").val().replace(/\n|\r|(\r\n)|(\u0085)|(\u2028)|(\u2029)/g, "<br/>"));
		}

		$("#errorMsg").html("");
		$("#errorMsg").hide();
		
		ajaxSubmit(document.getElementById("redEnvelopesForm"), function(data){
			$(".redEnvelopesRight").fadeOut(500);
			$(".redEnvelopesLeft").animate({marginLeft: '250px'}, 500);
			$(".redEnvelopesEditBtn").fadeIn();
			$(".redEnvelopesNextBtn").fadeIn();
			if(step != "1") {
				$(".redEnvelopesBackBtn").fadeIn();
			}
			var imgDa = $("<div>").html(data);
			data = $(imgDa).text();
			$("#id").val(data);
		});
	});
	
	//鼠标移上上一步按钮事件
	$(".redEnvelopesBackBtn").on("mouseover",function(){
		$(".redEnvelopesBackFont").stop().css('display', "block").animate({opacity: 1}, 500);
	});
	
	//鼠标移出上一步按钮事件
	$(".redEnvelopesBackBtn").on("mouseout",function(){
		$(".redEnvelopesBackFont").stop().animate({opacity: 0}, 500, function(){
			$(".redEnvelopesBackFont").css('display', "none");
		});
	});
	
	//鼠标移上下一步按钮事件
	$(".redEnvelopesNextBtn").on("mouseover",function(){
		$(".redEnvelopesNextFont").stop().css('display', "block").animate({opacity: 1}, 500);
	});
	
	//鼠标移出下一步按钮事件
	$(".redEnvelopesNextBtn").on("mouseout",function(){
		$(".redEnvelopesNextFont").stop().animate({opacity: 0}, 500, function(){
			$(".redEnvelopesNextFont").css('display', "none");
		});
	});
	
	$("#packageMinPrice").blur(function(){
		if($(this).val().length>8){
			alert("输入金额过大！");
		}
	});

	$("#packageMaxPrice").blur(function(){
		if($(this).val().length>8){
			alert("输入金额过大！");
		}
	});
	
	$("#sharesReward").blur(function(){
		if($(this).val().length>8){
			alert("输入金额过大！");
		}
	});
});

/**
 * ajax提交表单
 */
function ajaxSubmit(frm, fn) {
    var dataPara = getFormJson(frm);
    $.ajax({
        url: frm.action,
        type: frm.method,
        dataType: "text", 
        data: dataPara,
        success: fn
    });
}

/**
 * 将form中的值转换为键值对
 */
function getFormJson(frm) {
    var o = {};
    var a = $(frm).serializeArray();
    $.each(a, function () {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });

    return o;
}

function changeVal(option){
//	选择后,让第一项被选中,这样,就有Change啦.
//    document.getElementById("pageDomain").options[0].selected=true;  
	var name=$(option).val();
	$("#domain_inp").val(name);
}

/**
 * 修改右侧页面信息
 */
function editRight(obj){
	if($(obj).val()!=""){
		$("[id="+$(obj).attr("id")+"]", frames['redEnvelopesRight'].document).each(function(){
			$(this).html($(obj).val().replace(/\n|\r|(\r\n)|(\u0085)|(\u2028)|(\u2029)/g, "<br/>"));
		});
	}
}

/**
 * 跳转页面
 * @param obj
 * 		  第几步
 */
function jumpStep(obj, isedit) {
	var url = root+"/siims/vmaque/redPackage/skipRedPackage.jspx?redPackageContentData.id="+$("#id").val()+"&step="+obj;
	if(obj == "3"){
		url = url+"&mainPath="+mainSystemPath;
	}

	if(isedit == "false") {
		url = url+"&createOrEdit=create";
	} else {
		url = url+"&createOrEdit=edit";
	}
	if(obj == "5") {
		url = root + "/siims/vmaque/redPackage/produceRedPackage.jspx?redPackageContentData.id="+$("#id").val();
		$.ajax({
	        url: url,
	        type: "post",
	        dataType: "text", 
	        success: function(data){
	        	var imgDa = $("<div>").html(data);
				data = $(imgDa).text()
	        	if(data=="false"){
	        		alert("生成红包失败！请重新创建或联系管理员！");
	        	} else {
	        		location.href = root + "/siims/vmaque/redPackage/searchAllRedPackage.jspx";
	        	}
	        },
			error:function(){
				alert("生成红包失败！请重新创建或联系管理员！");
			}
	    });
		return;
	}
	location.href=url;
}

/**
 *增加红包数量
 */
function raiseNum(){
	var redPackageNum = parseInt($("#packageNum").val());
	$("#packageNum").val(redPackageNum+1);
	$("#packageNum",frames['redEnvelopesRight'].document).html(redPackageNum+1);
}

/**
 *减少红包数量
 */
function decreaseNum(){
	var redPackageNum = parseInt($("#packageNum").val());
	if(redPackageNum<1){
		$("#packageNum").val(0);
		$("#packageNum",frames['redEnvelopesRight'].document).html(0);
	}else{
		$("#packageNum").val(redPackageNum-1);
		$("#packageNum",frames['redEnvelopesRight'].document).html(redPackageNum-1);
	}
}
/**
 * 验证域名是否合法
 * @param domain
 * @returns {Boolean}
 */
function checkdomain(domain){
	var fl=true;
	var strRegex = "^((https|http|ftp|rtsp|mms)?://)"
		+ "?(([0-9a-z_!~*'().&=+$%-]+: )?[0-9a-z_!~*'().&=+$%-]+@)?" // ftp的user@
		+ "(([0-9]{1,3}\.){3}[0-9]{1,3}" // IP形式的URL- 199.194.52.184
		+ "|" // 允许IP和DOMAIN（域名）
		+ "([0-9a-z_!~*'()-]+\.)*" // 域名- www.
		+ "([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\." // 二级域名
		+ "[a-z]{2,6})" // first level domain- .com or .museum
		+ "(:[0-9]{1,4})?" // 端口- :80
		+ "((/?)|" // a slash isn't required if there is no file name
		+ "(/[0-9a-z_!~*'().;?:@&=+$,%#-]+)+/?)$";
	var re = new RegExp(strRegex);
	if (!re.test(domain)) {
		fl=false;
		return fl;
	}else{
		fl=true;
		return fl;
	}
}
