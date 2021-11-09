<!--

 FILE			:getTheMaxNumber
 PROJECT		:PROG2001-20F Web Design and Development
 PRPGRAMMER		:Will Wei& Mu Tong
 FIRST VERSION	:2020-10-21
 DESCRIPTION	:This file contains an asp file that get and validate
				the maximum number of user.
 
--> 
<!DOCTYPE html>
<html>
	<head>
		<title>hiloMaxNumber</title>
		<script type="text/javascript" src="js/validateNumber.js" >
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
	dim maxNumber
	dim errorMessage
	dim randomNumber
	errorMessage = "You should enter an int number that greater than 1"
'Get the value of name from cookie and save it to name varible
	name = Request.Cookies("name")
'validate the input of maxNumber (server side validate)
	maxNumber = Request.Form("maxNumber")
	if(IsNumeric(maxNumber)) then 'Is the input is a number?
		if(CDbl(maxNumber)) = (CInt(maxNumber)) then 'Is the input is a integer?
			if(Cint(maxNumber) > 1) then 'Is the input larger than 1
			'make a random number between 1 to maxNumber
			Randomize
			randomNumber = Int((maxNumber-1+1)*Rnd+1)
			Response.Cookies("randomNumber") = randomNumber 'Save the randomNumber in a Cookie
			Response.Cookies("maxNumber") = maxNumber 'Save the maxNumber in a Cookie
			Response.Cookies("miniNumber") = 1 'Save the miniNumber in a Cookie
			Response.Redirect("gameplay.asp") 'go to next page
			end if
		end if
	end if
	
%>
		<div class="header">
			<h1>Hilo Game</h1>
		</div>
		<form name="myForm" action="getTheMaxNumber.asp" method="POST" onsubmit="return validateNumber()">
			<table name="myTable" id="myTable" >
				<tr>
					<td>Hello <%=name%></td>
				</tr>
				<tr>
					<td>What's your maximum guess number?</td>
					<td><input id="maxNumber" name="maxNumber" type="text" /></td>
				</tr>
				<tr>
					<td><div id="maxNumberError" name="maxNumberError" style="color:red;" ></div></td>
				</tr>
				<%if(maxNumber<>"") then%>
				<tr>
					<td><div id="maxNumberError1" name="maxNumberError1" style="color:red;"><%=errorMessage%></td>
				</tr>
				<%end if%>
				<tr>
					<td colspan="3" align="center">
					<input type="submit" id="submitButton" name="submitButton" value="Next" />
					</td>
				</tr>
			</table>
			
		</form>
	</body>
</html>