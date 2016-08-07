<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title></title>
<%@ include file="/WEB-INF/views/include/bootstrap.jsp"%>
</head>

<script id="article_item" type="text/html">
{{# for(var i = 0, len = d.list.length; i < len; i++){ }}
	<tr>
		<th scope="row">{{i+1}}</th>
		<td>{{ d.list[i].content }}</td>
		<td width=100>{{ d.list[i].author }}</td>
		<td width=140 >{{ d.list[i].createTm }}</td>
	</tr>
{{# } }}
</script>



<body>

	<div class="container" style="width:1200px">
		<div class="row">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>内容</th>
						<th>作者</th>
						<th>时间</th>
					</tr>
				</thead>
				<tbody id="list">
				</tbody>
			</table>
			<div id="pagediv"></div>
		</div>
	</div>
</body><script>
	var data={"list":[{"id":1,"content":"所以当炒房户里面有个外围蠢货四处说我ER买了万科这下子头发都白了","author":"打湿","createTm":"2016-07-07"}]};
	var gettpl = document.getElementById("article_item").innerHTML;
	/* laytpl(gettpl).render(data, function(html){
	    document.getElementById("list").innerHTML = html;
	}); */
	(function($){
		//表格对象
		var grid={
			currentPage:1,
			request:function(pageNo){ //请求数据;
				_this=grid;
				if(!pageNo)pageNo=_this.currentPage;
				_this.currentPage=pageNo;
				$.getJSON('article/list', {
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
			}
			
		};
		
		//初始列表分页
		laypage({
			cont : 'pagediv', //容器。值支持id名、原生dom对象，jquery对象,
			pages: 100, //总页数
			groups : 0, //连续分数数0
			prev : false, //不显示上一页
			next : '查看更多',
			skin : 'flow', //设置信息流模式的样式
			jump : function(obj) {
				/* if (obj.curr === 100) {
					this.next = '没有更多了';
				} */
				grid.request(obj.curr)
				
			}
		}); 
		
		//初始表格
		grid.init();
		
	})(jQuery);
	
	
	
	
</script>
</html>