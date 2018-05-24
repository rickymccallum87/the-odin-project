let container = document.createElement('div');
container.classList.add('container');

// Build grid
let grid = [];
for (let i = 1; i <= 4; i++) {
	for (let j = 1; j <= 4; j++) {
		grid[j] = document.createElement('div');
		grid[j].setAttribute('id', 'square' + i + '-' + j);
		grid[j].classList.add('square');
		if (j == 1) {
			grid[j].classList.add('row');
		}
		container.appendChild(grid[j]);
	}
}

// Display grid
document.body.appendChild(container);
