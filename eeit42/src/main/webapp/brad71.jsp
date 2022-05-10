<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (!session.isNew()){
		if (session.getAttribute("member") != null){
			response.sendRedirect("brad73.jsp");
		}else{
			session.invalidate();
		}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<form action="brad72.jsp" method="post">
	Account : <input name="account" /><br />
	Password : <input name="passwd" /><br />
	<input type="submit" value="Login" />
</form>


</body>
</html>