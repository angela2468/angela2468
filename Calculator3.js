function fibonacci(){
	var firstNumber = document.getElementById("firstNumber").value;
	var secondNumber = document.getElementById("secondNumber").value;
	var terms = document.getElementById("terms").value;
	var sequence_list = new Array();
	sequence_list.push(firstNumber)
	sequence_list.push(secondNumber)
	var append = terms-2
	for (var i=1; i<=append; i++){
		//length = len(sequence_list);
    	new_term = Number(sequence_list[i-1]) + Number(sequence_list[i]);
    	sequence_list.push(new_term);
     }
	document.getElementById("result").innerHTML = " Fibonacci Sequence: " + sequence_list;

	var calc_list = new Array();
	for (var i=0; i<terms; i++){
		new_term2 =  Number(sequence_list[i+1]) / Number(sequence_list[i])
		calc_list.push(new_term2);
	}
	document.getElementById("result2").innerHTML = "Sequence Using Formula: " + calc_list;


}



