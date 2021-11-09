<!--

 FILE			:getTheMaxNumber
 PROJECT		:PROG2001-20F Web Design and Development
 PRPGRAMMER		:Will Wei& Mu Tong
 FIRST VERSION	:2020-10-21
 DESCRIPTION	:This file contains an asp file that celebrate the win
				and set the cookies to none
 
--> 
<!DOCTYPE html>
<html>
	<head>
		<title>gameWin</title>
		<style>
		body{
			background-color: gold;
			color: blue;
		}
		table{
			margin: 0 auto;
		}
		.header{
		text-align: center;
		}
		</style>
	</head>
	
	<body>
<%
	Response.Cookies("maxNumber") = ""
	Response.Cookies("miniNumber") = ""
	Response.Cookies("name") = ""
	Response.Cookies("randomNumber") = ""
%>
		<div class="header">
			<h1>Hilo Game</h1>
		</div>
			<table name="myTable" id="myTable" >
				<tr>
					<td>You Win!!You guessed the number</td>
				</tr>
				<tr>
					<td><img src="img/win.jpg"></td>
				</tr>
				<tr>
					<td colspan="3" align="center">
					<button onclick="document.location='hiloStart.html'">Play Again</button>
					</td>
				</tr>
			</table>
	</body>
</html>