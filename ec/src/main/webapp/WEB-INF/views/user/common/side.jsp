<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/style_side.css" rel="stylesheet" />
<title>사이드 메뉴</title>
</head>
<body>
	<ul class="menu-hover-fill flex flex-col items-start leading-none text-2xl uppercase space-y-4">
  <li><a href="#" data-text="home">home</a></li>
  <li><a href="#" data-text="archives">archives</a></li>
  <li><a href="#" data-text="tags">tags</a></li>
  <li><a href="#" data-text="categories">categories</a></li>
  <li><a href="#" data-text="about">about</a></li>
</ul>
</body>
</html>