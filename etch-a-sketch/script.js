let sketchPad = document.querySelector('#sketchPad');
let gridWidth = 800;

// Set up reset button
let resetBtn = document.querySelector('#resetBtn');
resetBtn.addEventListener('click', function() {
	let newSize = prompt('How many squares per side?');
	buildGrid(newSize);
});

// Display initial grid
buildGrid(20);

function buildGrid(squareCount) {
	// Remove old grid, if necessary
	if (sketchPad.firstChild) {
		sketchPad.removeChild(sketchPad.firstChild);
	}

	// Create container
	let gridContainer = document.createElement('div');
	gridContainer.classList.add('mx-auto');
	// +1 to gridWidth to allow for float rounding errors
	gridContainer.setAttribute('style', 'width: ' + (gridWidth + 1) + 'px;');

	// Fit squares into grid, accounting for margins
	let squareSize = gridWidth / squareCount;

	// Build grid
	let grid = [];
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
}

// Color in each square when hovered
function draw() {
	if (!this.classList.contains('hovered')) {
		this.classList.add('hovered');
	}
}
