VALID_CHOICES =  ['rock', 'paper', 'scissors']
WINNING_STATEMENTS = ['you rock! you\'re the winner!', 'you outdid your opponent!', 'Nice! You won!', ]
LOSING_STATEMENTS = ['You lost.', 'No chicken dinner', 'Nice try, maybe next time.']

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do

  choice = ''

  loop do
    prompt("Choose one:#{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end      

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  if (choice == 'rock' && computer_choice == 'scissors') ||
      (choice == 'paper' && computer_choice == 'rock') ||
      (choice == 'scissors' && computer_choice == 'paper')
    prompt(WINNING_STATEMENTS.sample)
  elsif (choice == 'rock' && computer_choice == 'paper') ||
        (choice == 'paper' && computer_choice == 'scissors') ||
        (choice == 'scissors' && computer_choice == 'rock')
    prompt(LOSING_STATEMENTS.sample)
  else
    prompt('That\'s a tie!')
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')

end

prompt "Thank you for playing!"
