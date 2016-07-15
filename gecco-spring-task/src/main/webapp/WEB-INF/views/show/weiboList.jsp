<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title></title>
<%@ include file="/WEB-INF/views/include/bootstrap.jsp"%>
</head>

<script>
laypage({
    cont: 'page8', //容器。值支持id名、原生dom对象，jquery对象,
    //pages: 7, //总页数
    groups: 0, //连续分数数0
    prev: false, //不显示上一页
    next: '查看更多',
    skin: 'flow', //设置信息流模式的样式
    jump: function(obj){
        if(obj.curr === 6){
            this.next = '没有更多了';
        }
        $.getJSON('test/demo1.json', {
        	
        },function(res){
        	
        });
        
        $('#view8').append(appendimg(obj.curr));
    }
});

</script>

<body>

	<div class="container">
		<div class="row">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Username</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>