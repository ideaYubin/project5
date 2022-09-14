<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" import="sec01.ex01.*" 
	pageEncoding="UTF-8" isELIgnored="false"	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 입력 창</title>
</head>
<body>
<c:redirect url="/test03/mem1.jsp">
<c:param name="id" value="${'hong' }" />
<c:param name="pwd" value="${'1234' }" />
<c:param name="name" value="${'홍길동' }" />
<c:param name="email" value="${'hong@test.com' }" />
<c:param name="age" value="${'22' }" />
<c:param name="height" value="${'177' }" />
<c:param name="id1" value="${'ki' }" />
<c:param name="pwd1" value="${'4321' }" />
<c:param name="name1" value="${'기성용' }" />
<c:param name="email1" value="${'ki@test.com' }" />
<c:param name="age1" value="${'33' }" />
<c:param name="height1" value="${'189' }" />
</c:redirect>
</body>
</html>