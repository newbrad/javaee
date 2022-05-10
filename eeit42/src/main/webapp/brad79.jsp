<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
		<script type="text/javascript">
			var xhttp = new XMLHttpRequest();
			
			// AJAX GET
			function test1(){
				xhttp.onreadystatechange = callback;
				xhttp.open("GET", "brad80.jsp");
				xhttp.send();
			}
			function callback(){
				if (xhttp.readyState == 4 && xhttp.status == 200){
					document.getElementById('realname').innerHTML = xhttp.responseText 
				}
			}
			
			setInterval(function(){
				test1();
			}, 1000);
		</script>
	</head>
	<body>
		Realname = <span id='realname'></span>
	</body>
</html>