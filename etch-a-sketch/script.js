// Create container
let gridContainer = document.createElement('div');
gridContainer.classList.add('mx-auto');
let gridSize = 800;
gridContainer.setAttribute('style', 'width: ' + gridSize + 'px;');

// Build grid
let grid = [];
let squareCount = 20;
// Fit squares into grid, accounting for margins
squareSize = (gridSize - squareCount * 2) / squareCount;
for (let i = 0; i < squareCount ** 2; i++) {
	// Create each square
	grid[i] = document.createElement('div');
	grid[i].classList.add('square');

	// Size appropriately
	grid[i].setAttribute('style', 'width: ' + squareSize + 
		'px; height: ' + squareSize + 'px;');

	// Draw on hover
	grid[i].addEventListener('mouseover', draw);

	// Begin new row
	if (i % squareCount == 0) {
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
