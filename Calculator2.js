
function pass(number) {
	var number2 = document.getElementById("number").innerHTML;
	document.getElementById("number").innerHTML = number2 + number;
}

function calculating(){
	var number3 = document.getElementById("number").innerHTML;
	try {
		document.getElementById("output").innerHTML = "Output: " + eval(number3);
	}
	catch(err){
		document.getElementById("output").innerHTML = "Output: " + "ERROR"
	}
}

function clear2(){
	var emptyString = ""
	document.getElementById("number").innerHTML = emptyString;
	document.getElementById("output").innerHTML = "Output: " + emptyString;
}