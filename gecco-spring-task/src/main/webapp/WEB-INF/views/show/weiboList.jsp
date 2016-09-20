<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title></title>
<%@ include file="/WEB-INF/views/include/bootstrap.jsp"%>
</head>


<script id="article_item" type="text/html">
{{# for(var i = 0, len = d.list.length; i < len; i++){ }}


<div class="row highlight">
			

	<dl>
		<dt><a target="_blank" href="#"><img src="{{d.list[i].chatHead}}" class="headPic" onerror="javascript:this.src='${ctx}/static/images/no.jpg'" /></a>
		</dt>
		<dd><a target="_blank" href="{{d.list[i].href}}">{{d.list[i].author}}</a> {{ d.list[i].content }}
			<a target="_blank" href="{{d.list[i].href}}">查看全文</a>
		</dd>
		<br style="clear:both;" />
	</dl>
		<div>{{showTip(d.list[i])}}</div>	
</div>
{{# } }}

</script>



<body>
<style>
	.highlight {
	    padding: 9px 14px;
	    margin-bottom: 14px;
	    background-color: #f7f7f9;
	    border: 1px solid #e1e1e8;
	    border-radius: 4px;
	}
	dt{
		float: left;
	}
	dd{
		float: left;
		width:1000px;
		overflow: hidden;
	}
	
	.article-content{
		width:100%;
		float: left
	}
</style>

<div class="item">
</div>

	

	<div class="container" >
		<ul class="nav nav-tabs">
		  <li role="presentation" <c:if test="${type==1}"> class="active"</c:if> ><a href="${ctx}/article/index?type=1">微博</a></li>
		  <li role="presentation"<c:if test="${type==2}"> class="active"</c:if>><a href="${ctx}/article/index?type=2">淘股吧</a></li>
		  <li role="presentation"<c:if test="${type==3}"> class="active"</c:if>><a href="${ctx}/article/index?type=3">滚雪球</a></li>
		   <li role="presentation"<c:if test="${type==4}"> class="active"</c:if>><a href="${ctx}/article/index?type=4">55168</a></li>
		</ul>
		<div id="list">
			
		</div>
		<div id="pagediv"></div>
	</div>
</body>
<script>
	var data={"list":[{"id":1,"content":"那时候山东黄金真的谁买谁赚钱，后来连卖金饰的破公司都跟着一起涨，当时竟然有了做大组合的良好机会：指数基金。用指数基金做盘底儿，码上黄金股，真的十个亿进去都舒服痛了。我们这些假经纪人之名希望用自己的魅力去征服客户的人是着急的，这时候就是大私募最好赚钱的时候，可是我们无一兵一卒。","author":"打湿","createTm":"2016-07-07"}]};
	var gettpl = document.getElementById("article_item").innerHTML;
	/* laytpl(gettpl).render(data, function(html){
	    document.getElementById("list").innerHTML = html;
	}); */
	
	function showTip(item){
		
		var text='<span style="margin-right:30px" >'+item.createTm+"</span>";
		switch(item.sourceType){
		case 1:
			text+="来自新浪微博";
			break;
		default:
			break;
		}
		return text;
	}
	
	function  DateDiff(sDate1,  sDate2){    //sDate1和sDate2是2006-12-18格式    
        var  aDate,  oDate1,  oDate2,  iDays    
        aDate  =  sDate1.split("-")    
        oDate1  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0])    //转换为12-18-2006格式    
        aDate  =  sDate2.split("-")    
        oDate2  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0])    
        iDays  =  parseInt(Math.abs(oDate1  -  oDate2)  /  1000  /  60  /  60  /24)    //把相差的毫秒数转换为天数   
        return  iDays + 1   
    }
	
	(function($){
		//表格对象
		var grid={
			currentPage:1,
			request:function(pageNo){ //请求数据;
				_this=grid;
				if(!pageNo)pageNo=_this.currentPage;
				_this.currentPage=pageNo;
				$.getJSON('article/list?type='+${type}, {
					"pageNo":pageNo
				}, function(res) {
					 var tpl = laytpl(gettpl);
					$("#list").html("")
					$("#list").append(tpl.render(res));
					
				}); 
			},
			init:function(pageNo){ //初始化
				//轮询数据.设置8秒请求一次数据
				setInterval(this.request,8000);
				this.request(1);
				
			}
			
		};
		
		
		
		//初始列表分页
		/* laypage({
			cont : 'pagediv', //容器。值支持id名、原生dom对象，jquery对象,
			pages: 100, //总页数
			groups : 0, //连续分数数0
			prev : false, //不显示上一页
			next : '查看更多',
			skin : 'flow', //设置信息流模式的样式
			jump : function(obj) {
				/* if (obj.curr === 100) {
					this.next = '没有更多了';
				}
				grid.request(obj.curr)
				
			}
		});  */
		
		//初始表格
		grid.init();
		
	})(jQuery);
	
	
	
	
</script>
</html>