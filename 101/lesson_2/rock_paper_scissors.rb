VALID_CHOICES = %w(rock paper scissors)
def win?(player1, player2)
  (player1 == 'rock' && player2 == 'scissors') ||
    (player1 == 'paper' && player2 == 'rock') ||
    (player1 == 'scissors' && player2 == 'paper')
end

def display_result(human, computer)
  if win?(human, computer)
    prompt("You win!")
  elsif win?(computer, human)
    prompt("Computer wins!")
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets().chomp()

    if VALID_CHOICES.include?(choice.downcase)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts("You chose #{choice}, Computer chose #{computer_choice}.")
  display_result(choice, computer_choice)

  prompt("Press 'Y' to play again or any key to exit.")
  break unless gets.chomp().downcase == 'y'
end
prompt("Thanks for playing. Goodbye!")
