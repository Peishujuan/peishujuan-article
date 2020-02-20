<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm"%>
<%
	String path=request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="/resource/css/index_work.css"/> 
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/My97DatePicker/WdatePicker.js"></script>

</head>
<body>

	<h1>文章列表展示页~</h1>
	<form action="list" method="post">
		<input type="hidden" name="pageNum">
		时间区间：<input type="text" name="startDate" value="${vo.startDate }" onclick="WdatePicker()" >
				--<input type="text" name="endDate" value="${vo.endDate }" onclick="WdatePicker()"><br>
		排序：<select name="orderName">
				<option value="">--请选择呢--</option>
				<option value="created" ${vo.orderName=="created"?"selected":"" }>发表时间</option>
				<option value="user_id" ${vo.orderName=="user_id"?"selected":"" }>作者ID</option>
				<option value="hits" ${vo.orderName=="hits"?"selected":"" }>点击量</option>
			  </select>
			<select name="orderMethod">
				<option value="">--请选择呢--</option>
				<option value="asc" ${vo.orderMethod=="asc"?"selected":"" }>升序</option>
				<option value="desc" ${vo.orderMethod=="desc"?"selected":"" }>降序</option>
			</select>
		<input type="submit" value="查询">
	</form>
	<table>
	  <tr>
	    <th>ID</th>
	    <th>标题</th>
	    <th>内容</th>
	    <th>作者ID</th>
	    <th>点击量</th>
	    <th>发表时间</th>
	    <th>举报次数</th>
	  </tr>
	  <c:forEach items="${info.list }" var="a">
		  <tr>
		    
		    <td>${a.id }</td>
		    <td>${a.title }</td>
		    <td>${a.content }</td>
		    <td>${a.userId}</td>
		    <td>${a.hits }</td>
		    <td><fm:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${a.created }" /></td>
		    <td>${a.complainNum }</td>
		  </tr>
	  </c:forEach>
	  <tr>
	  	<td colspan="100">
	  		第${info.pageNum }/${info.pages }页--共${info.total }条数据
	  		<input type="button" onclick="page(1)" value="首页">
	  		<input type="button" onclick="page(${info.prePage })" value="上一页">
	  		<input type="button" onclick="page(${info.nextPage })" value="下一页">
	  		<input type="button" onclick="page(${info.pages })" value="尾页">
	  	</td>
	  </tr>
	</table>

</body>
<script type="text/javascript">
	function page(pageNum) {
		$("[name=pageNum]").val(pageNum)
		$("form").submit()
	}
</script>
</html>