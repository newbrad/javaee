<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@page import="tw.brad.utils.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] var1 = {"Brad1", "Eric1", "Tony1", "Andy1"};
	pageContext.setAttribute("names", var1);
	
	Student s1 = new Student("趙令文");
	pageContext.setAttribute("s1", s1);

	String[] var2 = {"Brad2", "Eric2", "Tony2", "Andy2"};
	request.setAttribute("names", var2);

	String[] var3 = {"Brad3", "Eric3", "Tony3", "Andy3"};
	session.setAttribute("names", var3);

	String[] var4 = {"Brad4", "Eric4", "Tony4", "Andy4"};
	application.setAttribute("names", var4);

	LinkedList<String> list = new LinkedList<>();
	list.add("aaa");list.add("bbb");list.add("cccc");list.add("ddd");
	pageContext.setAttribute("list", list);
	
	HashMap<String,String> maps = new HashMap<>();
	maps.put("x", "12.3"); maps.put("y", "3.14");
	pageContext.setAttribute("point", maps);
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
${pageScope.names[0] }<br >
${requestScope.names[1] }<br >
${sessionScope.names[2] }<br >
${applicationScope.names[3] }<br >
<hr />
debug => ${names[0] }<br />
<hr />
${pageScope.s1 }<br >
<hr />
List: ${list[param.i ] }<br />
<hr />
Point: ${point["x"] } : ${point["y"] }<br />
Point: ${point.x } : ${point.y }<br />
<hr />
${10 + 3 }<br />
${param.x + param.y }<br />
${param.x > param.y }<br />
${10 > 3 }<br />
${param.y == "3" }<br />
${param.y == 3 }<br />






</body>
</html>