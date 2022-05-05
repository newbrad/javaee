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

<h1>Brad Big Company</h1>
<hr />
<jsp:include page="brad43.jsp">
	<jsp:param value="<%= v1 %>" name="key1"/>
	<jsp:param value="<%= v2 %>" name="key2"/>
</jsp:include>


<hr />



</body>
</html>