<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#container{
	width:100%;
	margin:0px auto;
	text-align:center;
	border:0px solid #bcbcbc;
}
#header{
	padding:5px;
	margin-bottom:5px;
	border:0px soild #bcbcbc;
	background-color:white;
}
#sidebar-left{
	width: 15%;
	height:700px;
	padding:5px;
	margin-right: 5px;
	float: left;
	background-color: #ccc;
	border: 0px solid #bcbcbc;
	font-size: 10px;
	
}
#content{
	width:80%;
	padding:5px;
	margin-right:5px;
	float:left;
	border: 0px solid #bcbcbc;
	
}
#footer {
clear: both;
padding: 5px;
border: 0px1 solid #bcbcbc;
background-color: lightblue;
}
</style>
<title><tiles:insertAttribute name="title" /></title>
</head>
<body>
<div id="header">
<tiles:insertAttribute name="header" />
</div>
<div id="sidebar-left">
<tiles:insertAttribute name="side" />
</div>
<div id="content">
<tiles:insertAttribute name="body" />
</div>
<div id="footer">
<tiles:insertAttribute name="footer" />
</div>
</body>
</html>