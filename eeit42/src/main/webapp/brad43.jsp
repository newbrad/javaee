<%@page import="tw.brad.utils.Student"%>
<%
	String k1 = request.getParameter("key1");
	String k2 = request.getParameter("key2");
	
	Student s1 = new Student("Brad");
%>
I am brad43
<hr />
Key1 : <%= k1 %><br />
Key2 : <%= k2 %><br />
<hr />
Student : <%= s1 %>