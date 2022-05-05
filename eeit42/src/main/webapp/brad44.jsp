<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int v1 = (int)(Math.random()*49+1);
	int v2 = (int)(Math.random()*49+1);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
I am brad44
<hr />
<jsp:forward page="brad45.jsp">
	<jsp:param value="<%= v1 %>" name="k1"/>
	<jsp:param value="<%= v2 %>" name="k2"/>
</jsp:forward>
<hr />


</body>
</html>