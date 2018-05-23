// Prep interactive elements
let rockBtn = document.getElementById('rock');
let paperBtn = document.getElementById('paper');
let scissorsBtn = document.getElementById('scissors');
let moves = document.querySelectorAll('.move');

let win = document.getElementById('win');
let lose = document.getElementById('lose');
let tie = document.getElementById('tie');
let results = document.querySelectorAll('.result');

let playerScore = document.getElementById('playerScore');
let computerScore = document.getElementById('computerScore');
let playerPoints = 0;
let computerPoints = 0;

// Launch a round by clicking a move
rockBtn.addEventListener('click', () => {launch('rock')});
paperBtn.addEventListener('click', () => {launch('paper')});
scissorsBtn.addEventListener('click', () => {launch('scissors')});

function launch(move) {
	// Clear old alert before new round
	results.forEach(function (el) {
		el.classList.remove('d-block');
		el.classList.add('d-none');
	},
		''
	);

	// Determine round winner
	let roundResult = playRound(move, computerPlay());

	// Update point totals and show round result
	if (roundResult.includes('Win')) {
		// Increment playerPoints
		playerPoints++;
		playerScore.textContent = playerPoints;
		// #win visible
		win.textContent = roundResult;
		win.classList.remove('d-none');
		win.classList.add('d-block');
	} else if (roundResult.includes('Lose')) {
		// Increment computerPoints
		computerPoints++;
		computerScore.textContent = computerPoints;
		// #lose visible
		lose.textContent = roundResult;
		lose.classList.remove('d-none');
		lose.classList.add('d-block');
	} else {
		// #tie visible
		tie.textContent = roundResult;
		tie.classList.remove('d-none');
		tie.classList.add('d-block');
	}

	// Announce game winner
	if (playerPoints == 5 || computerPoints == 5) {
		if (playerPoints == 5) {
			gameOver.textContent = 'You won the game!'
			gameOver.classList.add('alert-success');
		} else {
			gameOver.textContent = 'I win this time!'
			gameOver.classList.add('alert-danger');
		}
		// #gameOver visible
		gameOver.classList.remove('d-none');
		gameOver.classList.add('d-block');

		// Disallow any more moves
		moves.forEach(function (el) {
			el.classList.remove('d-block');
			el.classList.add('d-none');
		},
			''
		);
	}

}

// Computer randomly selects a move
function computerPlay() {
	let moves = ['rock', 'paper', 'scissors']
	return moves[Math.floor(Math.random() * 3)];
}

// Play one round
function playRound(playerSelection, computerSelection) {

	// Player selection is case insensitive
	playerSelection = playerSelection.toLowerCase();

	// Determine winner

	// Tie
	if (playerSelection == computerSelection) {

		// Convert move to Title Case
		let tieMove = playerSelection.charAt(0).toUpperCase()
			+ playerSelection.slice(1);
		return `It\'s a Tie! We both played ${tieMove}`;
	}

	// Player chose Rock
	if (playerSelection == 'rock') {
		if (computerSelection == 'paper') {
			return "You Lose! Paper beats Rock";
		}
		if (computerSelection == 'scissors') {
			return "You Win! Rock beats Scissors";
		}
	}

	// Player chose Paper
	if (playerSelection == 'paper') {
		if (computerSelection == 'rock') {
			return "You Win! Paper beats Rock";
		}
		if (computerSelection == 'scissors') {
			return "You Lose! Scissors beats Paper";
		}
	}

	// Player chose Scissors
	if (playerSelection == 'scissors') {
		if (computerSelection == 'rock') {
			return "You Lose! Rock beats Scissors";
		}
		if (computerSelection == 'paper') {
			return "You Win! Scissors beats Paper";
		}
	}
}
