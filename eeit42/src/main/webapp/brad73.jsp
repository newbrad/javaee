<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("member") == null){
		response.sendRedirect("brad71.jsp");
		return;
	}
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Main Page
<hr />
Welcome, ${member.realname }
<hr />
<a href="brad74.jsp">Page 2</a><br />
<a href="logout.jsp">Logout</a>
</body>
</html>