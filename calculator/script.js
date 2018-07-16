let display = document.getElementById('display');
let buttons = document.querySelectorAll('button');

for (let i = 0; buttons.length < i; i++) {
	buttons[i].addEventListener('click', console.log('clicked'));
}

// Math operations
let add = (op1, op2) => op1 + op2;
let subtract = (op1, op2) => op1 - op2;
let multiply = (op1, op2) => op1 * op2;
let divide = (op1, op2) => op1 / op2;
let operate = (opr, op1, op2) => opr(op1, op2);

// React to click, depending which button
function input(btn) {
	switch (btn) {
		case '0':
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':
			display.textContent += btn;
			break;
		case 'clear':
			display.textContent = '';
			break;
		case 'add':
			break;
		default:
			alert('Error: Key not recognized.');
	}
}

// let btnClr = document.getElementById('clear');
// btnClr.onclick = function() {
// 	display.textContent = '';
// }

// let btn7 = document.getElementById('7');
// btn7.onclick = function() {
// 	display.textContent += '7';
// }