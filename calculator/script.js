display = document.getElementById('display');
keys = document.getElementsByClassName('btn');

function input() {
	display.textContent.concat(this.textContent);
}

function add(op1, op2) {
	return op1 + op2;
}

function subtract(op1, op2) {
	return op1 - op2;
}

function multiply(op1, op2) {
	return op1 * op2;
}

function divide(op1, op2) {
	return op1 / op2;
}

function operate(opr, op1, op2) {
	return opr(op1, op2);
}


