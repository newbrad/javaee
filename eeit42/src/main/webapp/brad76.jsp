<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
		<script>
			var xhttp = new XMLHttpRequest();
			// AJAX GET
			function test1(){
				var max = document.getElementById('max').value;
				xhttp.onreadystatechange = callback;
				xhttp.open("GET", "brad77.jsp?max=" + max);
				xhttp.send();
			}
			function callback(){
				if (xhttp.readyState == 4 && xhttp.status == 200){
					document.getElementById('here').innerHTML = xhttp.responseText 
				}
			}
			// AJAX POST
			function test2(){
				xhttp.open("POST", "brad78.jsp");
				xhttp.onreadystatechange = callback2;
				xhttp.setRequestHeader(
					'Content-type','application/x-www-form-urlencoded');
				xhttp.send('x=10&y=3');
			}
			function callback2(){
				if (xhttp.readyState == 4 && xhttp.status == 200){
					document.getElementById('result').innerHTML = xhttp.responseText 
				}				
			}
			
		</script>
	</head>
	<body>
		<input type="number" id="max" />
		<input type="button" value="test1" onclick="test1()" />
		<span id='here'></span>
		<hr />
		<input type="button" value="test2" onclick="test2()" />
		<span id='result'></span>
	</body>
</html>