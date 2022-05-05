<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.utils.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Lottery: ${BradUtils.createLottery() }<br />
Lottery: ${BradUtils.createLottery() }<br />
Math: ${Math.random() }<br />

</body>
</html>