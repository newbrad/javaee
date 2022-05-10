<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (request.getParameter("account") == null){
		response.sendRedirect("brad71.jsp");
		return;
	}
%>    

<%
	String account = request.getParameter("account");
	String passwd = request.getParameter("passwd");

	if (account.equals("brad") && passwd.equals("123456")){
		// ok
		response.sendRedirect("brad73.jsp");
	}else{
		// error
		response.sendRedirect("brad71.jsp");
	}

%>