<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정창</title>
</head>
<body>
<form method="post" action="${contextPath}/member/updateMember.do">
<h1 class="text_center">회원정보 수정창</h1>
<table align="center">
	<tr>
		<td width="200"><p align="right">아이디</p></td>
		<td width="400"><input type="text" name="id" value="${member.id}" readonly></td>
	</tr>
	<tr>
		<td width="200"><p align="right">비밀번호</p></td>
		<td width="400"><input type="password" name="pwd" value="${member.pwd}"></td>
	</tr>
	<tr>
		<td width="200"><p align="right">이름</p></td>
		<td width="400"><input type="text" name="name" value="${member.name}"></td>
	</tr>
	<tr>
		<td width="200"><p align="right">이메일</p></td>
		<td width="400"><input type="text" name="email" value="${member.email}"></td>
	</tr>
	<tr>
		<td width="200"><p>&nbsp:</p></td>
		<td width="400"><input type="submit" value="수정하기">
		<input type="reset" value="다시입력"></td>
	</tr>
</table>
</form>
</body>
</html>