// Determine winner
let roundResult = playRound(playerMove, computerPlay());
console.log(roundResult);

// Update running tally
if (roundResult.includes('Win')) {
	finalOutcome += 1;
}
if (roundResult.includes('Lose')) {
	finalOutcome -= 1;
}

// Declare winner
if (finalOutcome > 0) {
	console.log('You won the game!');
} else if (finalOutcome < 0) {
	console.log('I win this time!');
} else {
	console.log('We tied.');
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
