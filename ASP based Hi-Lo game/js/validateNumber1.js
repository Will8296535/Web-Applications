// FUNCTION : validateNumber1
// DESCRIPTION :
// This function is called on the client-side to ensure that 
// the input data is not null before submitting.
// PARAMETERS :
// none
// RETURN:
// bool shouldSubmit
// maximum number must be a number
function validateNumber()
{
	var shouldSubmit = true;
	if(document.getElementById("guessNumber").value == "")
	{
		document.getElementById("guessNumberError").innerHTML = "Input cannot be blank";
		shouldSubmit = false;
	}
	else
	{
		document.getElementById("guessNumberError").innerHTML = "";
	}
	
	return shouldSubmit;
}