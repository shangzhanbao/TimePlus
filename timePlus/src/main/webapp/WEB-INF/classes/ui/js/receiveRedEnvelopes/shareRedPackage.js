$(function(){

	var appid = 'wxb414d8cfd28ae3ed';
	var secret = 'f58483fd45cfde1a918e66df7af8c7d4';
	
	//获取token
	var accessToken = obtainAccessToken();
	
	//获取当前时间秒数
	var timestamp = new Date().getTime();
	var timeStr = timestamp+"";
	timestamp = timeStr.substring(0, timeStr.length -3);
	
	//生成签名的随机串
	var noncestr = "Wm3WZYTPz0wzccnW";
	
	//获取ticket
	var ticketStr = obtainTicketStr(accessToken);
	
	//获取当前页面url
	var url = location.href.split('#')[0]
	//获取签名
	var signature = obtainSignature(ticketStr, noncestr, timestamp, url);
	
	wx.config({
		debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
		appId: appid, // 必填，公众号的唯一标识
		timestamp: timestamp, // 必填，生成签名的时间戳
		nonceStr: noncestr, // 必填，生成签名的随机串
		signature: signature,// 必填，签名，见附录1
		jsApiList: ['onMenuShareAppMessage','onMenuShareTimeline','onMenuShareQQ','onMenuShareWeibo'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
	});

	wx.ready(function(){
		var redPackageId=$("#redPackageId").val();//红包id 
		var collarPackageId=$("#collarPackageId").val();//领红包id 
		var packageImg=$("#packageImg").val();//红包图片
		var lineLink = root+"/siims/vmaque/snatchPackage/toSnatchPackageIndex.jspx?id="+redPackageId+"&collarPackageId="+collarPackageId;
		var imgUrl=root+packageImg;
		var descContent = $("#packageLanguage").val();//红包宣传语
		var shareTitle = $("#businessName").val();//红包名称
		//分享到朋友圈
		wx.onMenuShareAppMessage({
		    title: shareTitle, // 分享标题
		    desc: descContent, // 分享描述
		    link: lineLink, // 分享链接
		    imgUrl: imgUrl, // 分享图标
		    type: 'link', // 分享类型,music、video或link，不填默认为link
		    dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
		    success: function () { 
		        // 用户确认分享后执行的回调函数
		        $(".redPackAgeMaskBg").hide();
				$("#redPackAgeMaskfenxiang").hide();
		    },
		    cancel: function () { 
		        // 用户取消分享后执行的回调函数
		        $(".redPackAgeMaskBg").hide();
				$("#redPackAgeMaskfenxiang").hide();
		    }
		});

		//分享到朋友
		wx.onMenuShareTimeline({
		    title: shareTitle, // 分享标题
		    link: lineLink, // 分享链接
		    imgUrl: imgUrl, // 分享图标
		    success: function () { 
		        // 用户确认分享后执行的回调函数
		        $(".redPackAgeMaskBg").hide();
				$("#redPackAgeMaskfenxiang").hide();
		    },
		    cancel: function () { 
		        // 用户取消分享后执行的回调函数
		        $(".redPackAgeMaskBg").hide();
				$("#redPackAgeMaskfenxiang").hide();
		    }
		});
		
		//分享到qq
		wx.onMenuShareQQ({
		    title: shareTitle, // 分享标题
		    desc: descContent, // 分享描述
		    link: lineLink, // 分享链接
		    imgUrl: imgUrl, // 分享图标
		    success: function () { 
		       	// 用户确认分享后执行的回调函数
		       	$(".redPackAgeMaskBg").hide();
				$("#redPackAgeMaskfenxiang").hide();
		    },
		    cancel: function () { 
		      	// 用户取消分享后执行的回调函数
		       	$(".redPackAgeMaskBg").hide();
				$("#redPackAgeMaskfenxiang").hide();
		    }
		});
		
		//分享到微博
		wx.onMenuShareWeibo({
			title: shareTitle, // 分享标题
		    desc: descContent, // 分享描述
		    link: lineLink, // 分享链接
		    imgUrl: imgUrl, // 分享图标
		    success: function () { 
		       	// 用户确认分享后执行的回调函数
		       	$(".redPackAgeMaskBg").hide();
				$("#redPackAgeMaskfenxiang").hide();
		    },
		    cancel: function () { 
		        // 用户取消分享后执行的回调函数
		        $(".redPackAgeMaskBg").hide();
				$("#redPackAgeMaskfenxiang").hide();
		    }
		});
	});
	
   	//显示分享
	$("#fenxiang").on("click",function(){
		$(".redPackAgeMaskBg").show();
		$("#redPackAgeMaskfenxiang").show();
	});
	
   	//显示红包规则
	$("#openRule").on("click",function(){
		$(".redPackAgeMaskBg").show();
		$(".redPackAgeRuleBg").slideDown();
	});
	
	//关闭红包规则
	$("#closeRule").on("click",function(){
		$(".redPackAgeRuleBg").slideUp();
		$(".redPackAgeMaskBg").hide();
	});
	
	$("[class=redPackAgeMaskBg]").each(function(){
		$(this).css("width", getWidth()+"px").css("height", getHeight()+"px");
	});
	
	$(window).resize(function() {
		$("[class=redPackAgeMaskBg]").each(function(){
			$(this).css("width", getWidth()+"px").css("height", getHeight()+"px");
		});
		$(".redPackAgeRuleBg").css("width",(getWidth()*0.8)+"px").css("left",(getWidth()*0.1)+"px");
	});
});

/**
 * 获取AccessToken
 * @param appid
 * @param secret
 * @returns
 */
function obtainAccessToken(){
	var accessToken = "";
	$.ajax({
		async: false,
		type :"GET",                                                                                                                      
		url: root+"/siims/vmaque/sha/obtainAccessToken.jspx",
		dataType : "json",
		success : function(data){
			if(data.access_token != null) {
				accessToken = data.access_token;
			}
		}
	});
	if(accessToken == ""){
		return obtainAccessToken();
	} else {
		return accessToken;
	}
}

/**
 * 获取TicketStr
 * @returns
 */
function obtainTicketStr(accessToken){
	var ticketStr = "";
	$.ajax({
		async: false,
		type :"GET",                                                                                                                      
		url: root+"/siims/vmaque/sha/obtainTicketStr.jspx?access_token="+accessToken,
		dataType : "json",
		success : function(data){
			if(data.ticket != null){
				ticketStr = data.ticket;
			}
		}
	});
	
	if(ticketStr == ""){
		return obtainTicketStr(accessToken);
	} else {
		return ticketStr;
	}
	
}

/**
 * 获取签名
 * @param ticketStr
 * @returns
 */
function obtainSignature(ticketStr, noncestr, timenum, url){
	var signature = "";
	$.ajax({
		async: false,
		type :"POST",                                                                                                                      
		url: root+"/siims/vmaque/sha/shaSignature.jspx",
		data : {ticketStr:ticketStr+"",noncestr:noncestr+"",timenum:timenum+"",url:url+""},
		dataType : "json",
		success : function(data){
			if(data.signature != null){
				signature = data.signature;
			}
		}
	});
	if(signature == ""){
		return obtainSignature(ticketStr, noncestr, timenum, url);
	} else {
		return signature
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