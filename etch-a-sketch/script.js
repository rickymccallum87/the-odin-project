let gridContainer = document.createElement('div');

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

	gridContainer.appendChild(grid[i]);
}

console.log(grid);

// Display grid
sketchPad.appendChild(gridContainer);

// Color in each square when hovered
function draw() {
	if (!this.classList.contains('hovered')) {
		this.classList.add('hovered');
	}
}
