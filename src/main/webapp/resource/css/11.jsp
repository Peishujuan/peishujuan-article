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
 <link rel="stylesheet" type="text/css" href="<%=path%>/css/index_work.css"/> 
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
</head>
<body>
<style type="text/css">
.subchannel {
	height: 38px;
	width: 100%;
	z-index: 50;
	margin-bottom: 16px;
}

.subchannel .sub-list {
	top: -50px;
	background: #fff;
	height: 38px;
	border-bottom: 2px solid #f2f2f2;
}

.subchannel .sub-item:first-child {
	margin-left: 0 !important;
}

.subchannel .sub-selected {
	color: #f85959;
	border-bottom: 2px solid #f85959;
}

.subchannel .sub-item {
	line-height: 38px;
	font-size: 16px;
	display: inline-block;
	color: #444;
	margin-left: 33px;
	background: #fff;
}

li {
	list-style: none;
}
</style>

<style type="text/css">
.ex {
	white-space: nowrap; /*不换行的*/
	overflow: hidden; /*超出范围隐藏*/
	text-overflow: ellipsis; /*超出用省略号 */
}
</style>
</body>
</html>