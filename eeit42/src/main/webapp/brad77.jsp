<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String max = request.getParameter("max");
	out.println((int)(Math.random()*Integer.parseInt(max)+1));
%>