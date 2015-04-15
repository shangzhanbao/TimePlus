$(function(){
	$(".redPackAgeMaskBg").hide();
	$(".redPackAgeRuleBg").hide();
	$(".redPackAgePhoneBg").hide();
	openId = getCookieValue("openId");
	if(openId==null || openId=='""'){
		var fileref = document.createElement('script');
	    fileref.setAttribute("type","text/javascript");
	    fileref.setAttribute("src",mainSystemPath+"/view/js/purchase/getOpenId.js");
	    document.getElementsByTagName("body")[0].appendChild(fileref);
	}
	
	//显示红包规则
	$("#openRule").on("click",function(){
		$(".redPackAgeMaskBg").show();
		$(".redPackAgeRuleBg").slideDown();
	});
	
	//关闭电话弹窗
	$(".redPackAgeMaskBg").on("click",function(){
		$(".redPackAgePhoneBg").slideUp();
		$(".redPackAgeRuleBg").slideUp();
		$(".redPackAgeMaskBg").hide();
	});
	
	//关闭红包规则
	$("#closeRule").on("click",function(){
		$(".redPackAgeRuleBg").slideUp();
		$(".redPackAgeMaskBg").hide();
	});
	
	//点击立即抢红包 弹出填写电话号码页面
	$("#snarchPackage").on("click",function(){
		$(".redPackAgeMaskBg").show();
		$(".redPackAgePhoneBg").show();
	});
	$("[class=redPackAgeMaskBg]").each(function(){
		$(this).css("width", getWidth()+"px").css("height", getHeight()+"px");
	});
	$(".redPackAgePhoneBg").css("width",(getWidth()*0.8)+"px").css("left",(getWidth()*0.1)+"px");
	$(".redPackAgeRuleBg").css("width",(getWidth()*0.8)+"px").css("left",(getWidth()*0.1)+"px");
	$(window).resize(function() {
		$("[class=redPackAgeMaskBg]").each(function(){
			$(this).css("width", getWidth()+"px").css("height", getHeight()+"px");
		});
		$(".redPackAgePhoneBg").css("width",(getWidth()*0.8)+"px").css("left",(getWidth()*0.1)+"px");
		$(".redPackAgeRuleBg").css("width",(getWidth()*0.8)+"px").css("left",(getWidth()*0.1)+"px");
	});
});

/**
 * @author 文东
 * @date 2014－1-14
 * 填写完电话号码后执行抢红包的动作
 */
function submitForm(){
	// 获取用户填写的电话号码
	var userPhone = $("#snatchUserPhone").val();
	// 获取领红包人的id
	var collarUserId = $("#collarUserId").val();
	// 获取红包id
	var redPackageId = $("#redPackageId").val();
	// 获取openid
	var openId = getCookieValue("openId");
	// 获取领红包人的id
	if(userPhone == null || userPhone == ""){
		$("#erroHtml").html("电话号码不能为空！");
		return;
	}
	//验证输入的手机号码格式是否正确
	var teger=/^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/; 
	if(!teger.test(userPhone)){
		$("#erroHtml").html("电话号码输入格式不正确！");
		return;
	}
	$.ajax({
		type : "POST",
		url : root+"/siims/vmaque/snatchPackage/snatchPackage.jspx?snatchPackageUserData.snatchUserPhone="+userPhone+"&snatchPackageUserData.collarPackageUserId="+collarUserId+"&snatchPackageUserData.redpackageId="+redPackageId+"&snatchPackageUserData.openId="+openId,
		success : function(data){
			// 抢红包成功
			if(data.result == "success"){
				//跳转到抢红包成功页面
				window.location.href=root+"/siims/vmaque/snatchPackage/snatchPackageSuccess.jspx?collarPackageId="+collarUserId+"&id="+redPackageId+"&price="+data.price;
			}else if(data.result == "insufficient"){
				//跳转到抢红包失败页面
				window.location.href=root+"/siims/vmaque/snatchPackage/snatchPackageFailure.jspx?collarPackageId="+collarUserId+"&id="+redPackageId;
			}else if(data.result == "failByPhone"){
				$("#erroHtml").html("您已拥有该红包");
			}else{
				$("#erroHtml").html("出现系统未知异常");
			}
		}
	});
}

/**
 * 获取openid
 */
function obtainOpenid(){
	var openId = getCookieValue("openId");
	return openId;
}

/**
 * 添加设置cookie
 */
function addCookie(name,value,days,path){ 
    var name = escape(name);  
    var value = escape(value);  
    var expires = new Date();  
    expires.setTime(expires.getTime() + days * 3600000 * 24);  
    //path=/，表示cookie能在整个网站下使用，path=/temp，表示cookie只能在temp目录下使用  
    path = path == "" ? "" : ";path=" + path;  
    //GMT(Greenwich Mean Time)是格林尼治平时，现在的标准时间，协调世界时是UTC  
    //参数days只能是数字型  
    var _expires = (typeof days) == "string" ? "" : ";expires=" + expires.toUTCString();  
    document.cookie = name + "=" + value + _expires + path;  
}

/**
 * 获取cookie的值，根据cookie的键获取值
 */
function getCookieValue(name){
    //用处理字符串的方式查找到key对应value  
    var name = escape(name);  
    //读cookie属性，这将返回文档的所有cookie  
    var allcookies = document.cookie;         
    //查找名为name的cookie的开始位置  
    name += "=";  
    var pos = allcookies.indexOf(name);      
    //如果找到了具有该名字的cookie，那么提取并使用它的值  
    if (pos != -1){										//如果pos值为-1则说明搜索"version="失败  
        var start = pos + name.length;                  //cookie值开始的位置  
        var end = allcookies.indexOf(";",start);        //从cookie值开始的位置起搜索第一个";"的位置,即cookie值结尾的位置  
        if (end == -1) end = allcookies.length;        //如果end值为-1说明cookie列表里只有一个cookie  
        var value = allcookies.substring(start,end); //提取cookie的值  
        return (value);                           //对它解码        
    }else{  //搜索失败，返回空字符串  
        return "";  
    }  
}

//截取参数
function GetQueryString(name){
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	if(r!=null){
		return  unescape(r[2]); 
	}else{
		return null;
	}
}

/**
 * 获取窗口高度
 */
function getHeight() {
	var winHeight = 0;
	// 获取窗口高度
	if (window.innerHeight) {
		winHeight = window.innerHeight;
	} else if ((document.body) && (document.body.clientHeight)) {
		winHeight = Math.max(document.body.scrollHeight,document.body.clientHeight);
	}
	// 通过深入Document内部对body进行检测，获取窗口大小
	if (document.documentElement && document.documentElement.clientHeight) {
		winHeight = Math.max(document.documentElement.scrollHeight,document.documentElement.clientHeight);
	}
	return winHeight;
}
/**
 * 获取窗口宽度
 */
function getWidth() {
	var winWidth = 0;
	// 获取窗口宽度
	if (window.innerWidth) {
		winWidth = window.innerWidth;
	} else if ((document.body) && (document.body.clientWidth)) {
		winWidth = document.body.clientWidth;
	}
	// 通过深入Document内部对body进行检测，获取窗口大小
	if (document.documentElement && document.documentElement.clientWidth) {
		winWidth = document.documentElement.clientWidth;
	}
	return winWidth;
}