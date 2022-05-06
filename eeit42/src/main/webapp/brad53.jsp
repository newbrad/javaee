<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
0 = ${paramValues.x[0] }<br />
1 = ${paramValues.x[1] }<br />
2 = ${paramValues.x[2] }<br />
3 = ${paramValues.x[3] }<br />
4 = ${paramValues.x[4] }<br />
5 = ${paramValues.x[5] }<br />
<hr />
Method: <%= request.getMethod() %><br />
Method: ${pageContext.request.method }<br />
<hr />
IP : <%= request.getRemoteAddr() %><br />
IP : ${pageContext.request.remoteAddr }<br />
<hr />
IP : <%= request.getLocale() %><br />
IP : ${pageContext.request.locale }<br />
<hr />
Language : <%= request.getLocale().getDisplayLanguage() %><br />
Language : ${pageContext.request.locale.displayLanguage }<br />
<hr />








</body>
</html>