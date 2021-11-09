
// FUNCTION : validateForm
// DESCRIPTION :
// This function is called on the client-side to ensure that 
// the necessary fields have all been completed before submitting.
// PARAMETERS :
// none
// RETURN:
// bool shouldSubmit
function validateForm()
{
	var shouldSubmit = true;
	//name can not be blank
	if(document.getElementById("name").value == "")
	{
		nameError.innerHTML = "You have to enter a name"
		shouldSubmit = false;
	}
	else
	{
		setCookie("name",document.getElementById("name").value);
		nameError.innerHTML= "";
	}
	
	return shouldSubmit;
}
// FUNCTION : setCookie
// DESCRIPTION :
// This function is used to create a cookie
// PARAMETERS :
// name: cookie's name
// value: cookie's value
// RETURN:
// bool shouldSubmit
function setCookie(name,value)
{
	document.cookie = name + "=" + value + ";";
}