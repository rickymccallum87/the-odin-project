let display = document.getElementById('display');
let buttons = document.querySelectorAll('button');

// Define math operations
let add = (op1, op2) => op1 + op2;
let subtract = (op1, op2) => op1 - op2;
let multiply = (op1, op2) => op1 * op2;
let divide = (op1, op2) => op1 / op2;
let operate = (opr, op1, op2) => opr(op1, op2);

// Set up button event listeners
for (let i = 0; buttons.length > i; i++) {
	buttons[i].addEventListener('click', () => {input(buttons[i].id)});
}

// Process button presses
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
		case 'subtract':
		case 'multiply':
		case 'divide':
			// store display
			op1 = disp;
			// store operator
			opr = btn;
			// clear display
			display.textContent = '';
			break;
		case 'eq':
			// store display
			op2 = disp;
			// perform operation, update display
			// display.textContent = operate(opr, op1, op2);
			display.textContent = eval(opr + '(' + op1 + ', ' + op2 + ')');
			break;
		default:
			alert('Error: Key not recognized.');
	}
	disp = display.textContent;
}