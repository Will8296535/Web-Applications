// FUNCTION : validateNumber
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
	if(document.getElementById("maxNumber").value == "")
	{
		document.getElementById("maxNumberError").innerHTML = "Input cannot be blank";
		shouldSubmit = false;
	}
	else
	{
		document.getElementById("maxNumberError").innerHTML = "";
	}
	
	return shouldSubmit;
}