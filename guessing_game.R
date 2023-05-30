# Function to generate a random number between a specified range
generate_random_number <- function(min_value, max_value) {
  random_number <- sample(min_value:max_value, 1)
  return(random_number)
}

# Function to validate the user's guess
validate_guess <- function(guess, target_number) {
  if (guess == target_number) {
    message("Congratulations! You guessed the correct number.")
    return(TRUE)
  } else if (guess < target_number) {
    message("Too low. Try again!")
    return(FALSE)
  } else {
    message("Too high. Try again!")
    return(FALSE)
  }
}

# Main game function
play_guessing_game <- function() {
  min_value <- 1
  max_value <- 100
  target_number <- generate_random_number(min_value, max_value)
  guessed_correctly <- FALSE

  message("Welcome to the guessing game!")
  message("I have picked a random number between", min_value, "and", max_value, ".")
  
  while (!guessed_correctly) {
    user_input <- as.numeric(readline("Enter your guess: "))
    if (!is.na(user_input)) {
      guessed_correctly <- validate_guess(user_input, target_number)
    } else {
      message("Invalid input. Please enter a valid number.")
    }
  }
}

# Start the game
play_guessing_game()
