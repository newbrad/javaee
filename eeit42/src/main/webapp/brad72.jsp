<%@page import="tw.brad.utils.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (session.isNew() || request.getParameter("account") == null){
		session.invalidate();
		response.sendRedirect("brad71.jsp");
		return;
	}
%>    

<%
	String account = request.getParameter("account");
	String passwd = request.getParameter("passwd");

	if (account.equals("brad") && passwd.equals("123456")){
		// ok
		Member member = new Member();
		session.setAttribute("member", member);
		
		member.setAccount(account);
		member.setRealname("Brad");
		
		response.sendRedirect("brad73.jsp");
	}else{
		// error
		session.invalidate();
		response.sendRedirect("brad71.jsp");
	}

%>