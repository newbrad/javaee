<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int lottery = (int)(Math.random()*49+1);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Lottery = <%= lottery %>

<hr />
<%@ include file="brad41.jsp" %>
<hr />

</body>
</html>