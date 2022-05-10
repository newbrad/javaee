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
Page2
<hr />
${member.account } : ${member.realname }
<hr />
<a href="logout.jsp">Logout</a>


</body>
</html>