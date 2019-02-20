function add() {
	var firstNumber = document.getElementById("firstNumber").value;
	var secondNumber = document.getElementById("secondNumber").value;


	var result = Number(firstNumber) + Number(secondNumber);

	document.getElementById("result").innerHTML ="Result : " + result;

}

function subtract() {
	var firstNumber = document.getElementById("firstNumber").value;
	var secondNumber = document.getElementById("secondNumber").value;


	var result1 = Number(firstNumber) - Number(secondNumber);

	document.getElementById("result").innerHTML ="Result : " + result1;
}

function multiply() {
	var firstNumber = document.getElementById("firstNumber").value;
	var secondNumber = document.getElementById("secondNumber").value;


	var result2 = Number(firstNumber) * Number(secondNumber);

	document.getElementById("result").innerHTML ="Result : " + result2;
}


function divide() {
	var firstNumber = document.getElementById("firstNumber").value;
	var secondNumber = document.getElementById("secondNumber").value;


	var result3 = Number(firstNumber) / Number(secondNumber);

	document.getElementById("result").innerHTML ="Result : " + result3;
}