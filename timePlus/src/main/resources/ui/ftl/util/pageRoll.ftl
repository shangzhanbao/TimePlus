<!DOCTYPE>
<html>
<head>
<title></title>
<script>
	function judgePageSize(obj){
		if($(obj).text()>$("#totalPage").val()){
			$(obj).text($("#totalPage").val());
		}
	}
</script>
</head>
<body>
	<#assign j=0 />
	<#assign totalPage= pageRoll.totalRows/pageRoll.pageSize />
	<#assign totalModel=pageRoll.totalRows%pageRoll.pageSize />
	<#if totalModel gt 0 >
	    <#assign totalPage = totalPage?int+1>
	</#if>
	<#if pageRoll.currentPage gt 3 >
		<#assign j=pageRoll.currentPage-3 />
	</#if>
	<div style="clear:both"></div>
	<div style="margin-left: 20px;"  class="pagination">
		<ul>
			<li><span>共 <font color="red" id="totalRowsNum">${pageRoll.totalRows}</font>条记录</span></li> 
			<li><span>当前
				<font color="red">${pageRoll.currentPage+1}/${totalPage}</font> 页
			</span></li> 
			<input type='hidden' id="currentPage" name='pageRoll.currentPage' class='pageRollHidden' value='${pageRoll.currentPage}' data-value=''/>
			<input type='hidden' id="totalPage" value='${totalPage}' />
		</ul>
		<ul>
			<#if pageRoll.currentPage gt 3>
				<li><a href="javascript:void(0)" style="${(pageRoll.currentPage = 0)?string('background-color: rgba(0,0,70,.1)','')}" class="currentPage" data="0">1</a></li>
			</#if>
			<#if j gt 1>
				<li><span>...</span></li>
			</#if>
			<#assign k=totalPage />
			<#list j..k as i>
				<#if j lt totalPage && j lt pageRoll.currentPage+3>
					<li><a href="javascript:void(0)" style="${(pageRoll.currentPage = j)?string('background-color: rgba(0,0,70,.1)','')}" class="currentPage" data="${j}">${j+1}</a></li>
					<#assign j = j+1 />
				</#if>
			</#list>
			<#if pageRoll.currentPage lt totalPage-2 && j lt totalPage-1>
    			<li><span>...</span></li> 
    		</#if>
    		<#if pageRoll.currentPage lt totalPage-4>
    			<li><a href="javascript:void(0)" style="${(pageRoll.currentPage = totalPage-1)?string('background-color: rgba(0,0,70,.1)','')}" class="currentPage" data="${totalPage-1}">${totalPage}</a></li>
   			</#if>
		</ul>
		<ul> 
			<li><span>转到</span></li>
			<li>
				<span id="inCurrNum" curr="" contentEditable="true" class="currPageText" style="width:32px;height:20px" onblur="judgePageSize(this)"></span>
			</li>
			<li><a href="javascript:void(0)" class="toCurr">确定</a></li>
			
			   <span class="pageRoll"></span>
		</ul>
	</div>
</body>
</html>