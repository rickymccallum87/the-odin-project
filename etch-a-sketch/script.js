let container = document.createElement('div');
container.classList.add('container');

// Build grid
let grid = [];
for (let i = 0; i < 16; i++) {
	grid[i] = document.createElement('div');
	grid[i].setAttribute('id', 'square' + i);
	grid[i].classList.add('square');

	// Draw on hover
	grid[i].addEventListener('mouseover', draw);

	// Begin new row
	if (i % 4 == 0) {
		grid[i].classList.add('row');
	}

	container.appendChild(grid[i]);
}

console.log(grid);

// Display grid
document.body.appendChild(container);

function draw() {
	console.log(this);
	this.classList.add('hovered');
}
