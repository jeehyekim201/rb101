# frozen_string_literal: true

VALID_CHOICES = {
  'r': 'rock',
  'p': 'paper',
  'sc': 'scissors',
  'l': 'lizard',
  'sp': 'spock'
}.freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'sc'.to_sym && second == 'p'.to_sym) ||
  (first == 'p'.to_sym && second == 'r'.to_sym) ||
  (first == 'r'.to_sym && second == 'l'.to_sym) ||
  (first == 'l'.to_sym && second == 'sp'.to_sym) ||
  (first == 'sp'.to_sym && second == 'sc'.to_sym) ||
  (first == 'sc'.to_sym && second == 'l'.to_sym) ||
  (first == 'l'.to_sym && second == 'sp'.to_sym) ||
  (first == 'sp'.to_sym && second == 'r'.to_sym) ||
  (first == 'r'.to_sym && second == 'sc'.to_sym)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie.")
  end
end

loop do
  choice = ''
  player_win = 0
  computer_win = 0
  prompt('Welcome to the Abbreviated Rock, Paper, Scissors, Lizard, & Spock Game!')
  loop do
    loop do
      prompt("Choose the abbreviation for your move: #{VALID_CHOICES}")
      choice = Kernel.gets.chomp.to_sym

      break if VALID_CHOICES.key?(choice)

      prompt("That's not a valid choice.")
    end

    computer_choice = VALID_CHOICES.keys.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      prompt("You have #{player_win += 1} point(s)")
    elsif win?(computer_choice, choice)
      prompt("Computer has #{computer_win += 1} point(s)")
    else
      prompt("It's a tie.")
    end

    prompt("You: #{player_win}")
    prompt("Computer: #{computer_win}")
    break if player_win == 3 || computer_win == 3
  end

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Good bye.')
