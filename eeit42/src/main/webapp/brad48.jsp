<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	int id2 = Integer.parseInt(id); 
	String account = request.getParameter("account");
	String realname = request.getParameter("realname");
%>    
<jsp:useBean id="member" class="tw.brad.utils.Member"></jsp:useBean>
<jsp:setProperty name="member" property="id" value="<%= id2 %>" />
<jsp:setProperty name="member" property="account" value="<%= account %>" />
<jsp:setProperty name="member" property="realname" value="<%= realname %>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

id : <jsp:getProperty property="id" name="member"/><br />
account : <jsp:getProperty property="account" name="member"/><br />
realname : <jsp:getProperty property="realname" name="member"/><br />


</body>
</html>