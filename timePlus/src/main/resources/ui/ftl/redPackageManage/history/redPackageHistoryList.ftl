<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<#include "/ui/ftl/util/variable.ftl"/>
	<link rel="stylesheet" type="text/css" href="${root}/wro/red.util.css"/>
	<link rel="stylesheet" type="text/css" href="${root}/wro/red.redPackageHistory.css"/>
	<script type="text/javascript" src="${root}/wro/jquery.min.js"></script>
	<script type="text/javascript" src="${root}/wro/red.redPackageHistory.js"></script>
	<title>红包管理</title>
</head>
<body>
<div class="head"></div>
	<div class="content">
		<form action="${root}/siims/vmaque/redPackage/toRedPackageHistoryList.jspx?snatchPackageUserData.redpackageId=${(redPackageData.id)?default("")}" id="redPackageHistoryForm" method="post"  data="${(redPackageData.id)?default("")} ">
        	<div class="UserCenter_Right" >
      			<div class="mesTi">
		    		<div class="h1Div">
		    			<h1>
		     				${(redPackageData.businessName)?default("")} 
		     			</h1>
		     			<input type="hidden"  value="${(snatchPackageUserData.redPackageState)?default("")} " id="state" />
		     			<input type="hidden"  value="${(snatchPackageUserData.timeIdent)?default("")}" id="timeIdent" />
		    		</div>
		   		<a href="${mainSystemPath}/page_manage/key/getAllPaga?menuNum=1" target="_top"> <img alt="" src="${root}/images/history/u22.png"></a>
		</div>
 	<div class="DataStatistics_1">
    <div class="u21">
	  <ul class="chaxun_ul">
	  <li><a href="###" data="1" class="licolor" id="redstate4">所有红包</a></li>
	  <li> <a href="###"data="2"  id="redstate1">未使用红包</a></li>
	  <li><a href="###" data="3"  id="redstate2" >已使用红包</a></li>
	  <li style="border: none;"><a href="###" data="4" id="redstate3">已过期红包</a></li>
	  </ul>
	  <div>
	  <a href="###" style="text-decoration:none;" id="chaxun"><img src="${root}/images/history/u143.gif" style="width:24px;height: 24px;display: block;float: right;padding-top: 5px;"></a>
	  <input type="text" placeholder="输入电话号码" value="" id="phone"/>
		</div>
	</div>
      <div class="widget-content">
          <table class="table">
            <thead>
              <tr>
               <#if snatchPackageUserData.redPackageState?exists>
		 	    <#if snatchPackageUserData.redPackageState!=1>
		 	    	<th width="50px;" >
		 	    	<input type="checkbox"  id="checkBoxAll"   name="ckboxs" class="inbox" />
		 	    	</th>
		 	    	<!--<label class="blueBtn" data="1">全选</label>-->
		 	    	</#if>
		 	    	</#if>
		 	    	
		 	    	 <#if snatchPackageUserData.timeIdent?exists>
		 	    	<th width="50px;" >
		 	    	<input type="checkbox"  id="checkBoxAll"   name="ckboxs" class="inbox" />
		 	    	</th>
		 	    	</#if>
		 	    <th width="110px;">红包拥有者电话 </th>
                <th  width="70px;">价格</th>
                <th width="110">分享者电话</th>
                <th width="100">有效期</th>
                <th width="50">状态</th>
                <th width="120">操作</th>
              </tr>
            </thead>
             <tbody>
             <#if redPackageHistoryList?exists>
              <#list redPackageHistoryList as redpackage>
          <tr>
		  
		 	    <#if snatchPackageUserData.redPackageState?exists>
		 	    <#if snatchPackageUserData.redPackageState!=1>
		 	   		<td >
                   <input type="checkbox"  id="checkBoxId" value="${(redpackage.id)?default("")}"  name="ids" class="cbox" />
                   </td>
                   </#if>
                 </#if>
		 	    
		 	     <#if snatchPackageUserData.timeIdent?exists>
		 	   	  <td>
	               <input type="checkbox"  id="checkBoxId" value="${(redpackage.id)?default("")}"  name="ids" class="cbox" />
	              </td>
              </#if>
                <td >${(redpackage.snatchUserPhone)?default("")} </td>
                <td >${(redpackage.snarchPrice)?default("")}</td>
                <td >${(redpackage.collarUserPhone)?default("")}</td>
                <td style="color: #009dd9;">${(redPackageData.validTime)?string("yyyy-MM-dd")} </td>
                <td >
                	<#if redpackage.redPackageState?exists>
                   <#if redpackage.redPackageState=0>已使用</#if>
                  <#if redpackage.redPackageState=1>未使用</#if>
					</#if>
				</td>
                <td >
               		<#if redpackage.timeIdent??>
               		        <#if redpackage.timeIdent=1>
							<a href="###"  class="redBtn deleteRed"  data="${(redpackage.id)?default("")}">删除</a>
						</#if>
                   </#if>
                   
                    <#if redpackage.timeIdent??>
                       <#if redpackage.timeIdent=0>
						 <#if redpackage.redPackageState?exists>
                  			 <#if redpackage.redPackageState=1>
                  			 <a href="###" class="blueBtn updateSaveRed"  data="${(redpackage.id)?default("")}"  data1="${(redpackage.collarPackageUserId)?default("")}"  data2="${(snatchPackageUserData.redpackageId)?default("")}">使用</a>
                  			 </#if>
                  			 <#if redpackage.redPackageState=0>
							<a href="###"  class="redBtn deleteRed"  data="${(redpackage.id)?default("")}">删除</a>
							 </#if>
                 		</#if>
                 	 </#if>
				</#if>
				</td>
	</tr>
		 </#list>
		 </#if>
		
 			 <tr>
  			<#if snatchPackageUserData.redPackageState?exists>
		 	    <#if snatchPackageUserData.redPackageState!=1>
	              <td colspan="10">
	                 <a href="#" class="redBtn"  id="deleteRedAll" style="margin-left: 5px;" ><font style="font-size: 13px" >删除</font></a>
	              </td>
             </#if>
              </#if>
              
                 <#if snatchPackageUserData.timeIdent?exists>
		 	   			   <td colspan="10">
	                 <a href="#" class="redBtn" id="deleteRed" style="margin-left: 5px;" ><font style="font-size: 13px" >删除</font></a>
	              </td>
              </#if>
              </tr>
            
            </tbody>
          </table>
       
      </div>
     
     
    </div>
   </div>

   	<#include "../../util/pageRoll1.ftl">
 </form>
 </div>
</body>
</body> 
</html>