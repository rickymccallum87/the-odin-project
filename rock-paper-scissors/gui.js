// Initiate score variables
let player = document.getElementById('playerScore');
let computer = document.getElementById('computerScore');

// Launch a round by clicking a move
let rockBtn = document.getElementById('rock');
let paperBtn = document.getElementById('paper');
let scissorsBtn = document.getElementById('scissors');

rockBtn.addEventListener('click', launch('rock'));
paperBtn.addEventListener('click', launch('paper'));
scissorsBtn.addEventListener('click', launch('scissors'));

function launch(move) {
	// Clear old alert to start new round

	// Determine round winner
	let roundResult = playRound(move, computerPlay());

	// Update running tally
	// Alert round result
	if (roundResult.includes('Win')) {
		// Increment playerPoints
		// #win visible
	} else if (roundResult.includes('Lose')) {
		// Increment computerPoints
		// #lose visible
	} else {
		// #tie visible
	}

	// Announce game winner
	if (playerPoints == 5 || computerPoints == 5) {
		// #gameOver visible
		if (playerPoints == 5) {
			// add class .alert-success to #gameOver
			console.log('You won the game!');
		} else {
			// add class .alert-danger to #gameOver
			console.log('I win this time!');
		}
	}

});

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
