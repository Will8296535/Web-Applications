<!--

 FILE			:gamePlay
 PROJECT		:PROG2001-20F Web Design and Development
 PRPGRAMMER		:Will Wei& Mu Tong
 FIRST VERSION	:2020-10-21
 DESCRIPTION	:This file contains an asp file that let the user guess the number.
 
--> 
<!DOCTYPE html>
<html>
	<head>
		<title>hiloPlay</title>
		<script type="text/javascript" src="js/validateNumber1.js" >
		</script>
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
	dim name
	dim errorMessage
	dim miniNumber
	dim maxNumber
	dim randomNumber
	dim guessNumber
	dim showError
	
	miniNumber = Request.Cookies("miniNumber")
	maxNumber = Request.Cookies("maxNumber")
	randomNumber = Request.Cookies("randomNumber")
	name = Request.Cookies("name")
	guessNumber = Request.Form("guessNumber")
	errorMessage = "Your should enter an int number that in the range"
	showError = 0

'validate the input of guessNumber (server side validate)
	if(IsNumeric(guessNumber)) then'Is the input a number?
		if((CDbl(guessNumber)) = (CInt(guessNumber))) then'Is the input is an integer?
			if((Cint(guessNumber)) > (miniNumber-1)) then 'Is the input in the range?
				if((Cint(guessNumber)) < (maxNumber+1)) then
					if((Cint(guessNumber)) = (Cint(randomNumber))) then ' Guess correct?
						Response.Redirect("gameWin.asp")
					elseif((Cint(guessNumber)) > (Cint(randomNumber))) then 'if Guess not correct, then change the hint range
						maxNumber = guessNumber - 1
						Response.Cookies("maxNumber") = guessNumber - 1'change the hint value of maxNumber
						showError = 0
					else
						miniNumber = guessNumber + 1
						Response.Cookies("miniNumber") = guessNumber + 1'change the hint value of maxNumber
						showError = 0
					end if
				else
					showError = 1
				end if
			else
				showError = 1
			end if
		else
			showError = 1
		end if
	else
		showError = 1
	end if
	
%>
		<div class="header">
			<h1>Hilo Game</h1>
		</div>
		<form name="myForm" action="gamePlay.asp" method="POST" onsubmit="return validateNumber()">
			<table name="myTable" id="myTable" >
				<tr>
					<td>Hello <%=name%></td>
				</tr>
				<tr>
					<td>What's your guess number?</td>
					<td><input id="guessNumber" name="guessNumber" type="text" /></td>
				</tr>				
				<tr>
					<td>Hint: Your guessing range is between <%=miniNumber%> and <%=maxNumber%></td>
				</tr>
				<tr>
					<td><div id="guessNumberError" name="guessNumberError" style="color:red;" ></div></td>
				</tr>
				<%if(guessNumber<>"") then
					if(showError=1) then%>
				<tr>
					<td><div id="guessNumberError1" name="guessNumberError1" style="color:red;"><%=errorMessage%></td>
				</tr>
					<%end if
				end if%>
				<tr>
					<td colspan="3" align="center">
					<input type="submit" id="submitButton" name="submitButton" value="Next" />
					</td>
				</tr>
			</table>
			
		</form>
	</body>
</html>