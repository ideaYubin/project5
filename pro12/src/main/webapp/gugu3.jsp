<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    int dan=Integer.parseInt(request.getParameter("dan"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border='1' width='600'>
<tr align='center' bgcolor='#CC9999'>
<h2><td colspan='2'><%= dan %>단 출력</td></h2>
</tr>
<%
for(int j=2; j<=dan; j++) {
	%>
	<%
for(int i=1; i<10; i++) {
%>
<% 
if(j%2==1){
	%>
	<tr align="center" bgcolor=CCCCFF' width='300'>
<td>
<%=j %> * <%=i %>
</td>
<td>
<%=i*j %>
</td>
</tr>
<%
} else {
	 %>
	 <tr align="center" bgcolor='FFCCCC' width='300'>
	 <td>
	 <%=j %>*<%=i %>
	 </td>
	 <td>
	 <%=i*j %>
</td>
</tr>
<%
}
}
}
%>

</table>

<br>
<a href="gugu.html">구구단 수 입력</a>
</body>
</html>