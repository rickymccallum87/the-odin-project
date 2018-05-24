let gridContainer = document.createElement('div');
gridContainer.setAttribute('style', 'width: ' + (50 * 4 + 2 * 4) + 'px;');
gridContainer.classList.add('mx-auto');

// Build grid
let grid = [];
for (let i = 0; i < 16; i++) {
	grid[i] = document.createElement('div');
	// grid[i].setAttribute('id', 'square' + i);
	grid[i].classList.add('square');
	grid[i].setAttribute('style', 'width: ' + 50 + 
		'px; height: ' + 50 + 'px;');

	// Draw on hover
	grid[i].addEventListener('mouseover', draw);

	// Begin new row
	if (i % 4 == 0) {
		grid[i].classList.add('newRow');
	}

	gridContainer.appendChild(grid[i]);
}

// Display grid
sketchPad.appendChild(gridContainer);

// Color in each square when hovered
function draw() {
	if (!this.classList.contains('hovered')) {
		this.classList.add('hovered');
	}
}
