<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, sec01.ex01.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="link" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사랑합니다. 고객님</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
    $(function() {
    	$("#checkJson").click(function() {
    		var jsonStr = '{"name" : ["홍길동", "이순신", "임꺽정"]};
    		var jsonInfo = JSON.parse(jsonStr);
    		var output = "회원 이름<br>";
    		output += "=====<br>";
    		for(var i in jsonInfo.name){
    			output += jsonInfo.name[i] + "<br>"
    		}
    		$("#output").html(output);
    	});
    	   		
    });
    </script>
</head>
<body>
	<input type="button" value="출력" />
</body>
</html>