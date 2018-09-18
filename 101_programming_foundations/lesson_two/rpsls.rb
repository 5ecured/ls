require 'pry-byebug'
VALID_CHOICES = {
  r: 'rock',
  p: 'paper',
  s: 'scissors',
  l: 'lizard',
  sp: 'spock'
}

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def win?(first, second)
  (first == :r && second == :s) ||
    (first == :r && second == :l) ||
    (first == :p && second == :r) ||
    (first == :p && second == :sp) ||
    (first == :s && second == :p) ||
    (first == :s && second == :l) ||
    (first == :l && second == :sp) ||
    (first == :l && second == :p) ||
    (first == :sp && second == :r) ||
    (first == :sp && second == :s)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("Draw!")
  end
end

player_score = 0
computer_score = 0

loop do
  choice = ''
  until player_score == 5 || computer_score == 5 do
    which_prompt = <<-MSG
      Choose one:
      r for ROCK
      p for PAPER
      s for SCISSORS
      l for LIZARD
      sp for SPOCK
    MSG

    prompt(which_prompt)
    choice = Kernel.gets().chomp().to_sym

    case choice
    when :r
      'rock'
    when :p
      'paper'
    when :s
      'scissors'
    when :l
      'lizard'
    when :sp
      'spock'
    end

    break if VALID_CHOICES.include?(choice)

    prompt("Not a valid choice...")
  end

  computer_choice = VALID_CHOICES.keys.sample()

  prompt("Your choice: #{choice} and Computer choice: #{computer_choice}")

  display_results(choice, computer_choice)

  player_score += 1 if win?(choice, computer_choice)
  computer_score += 1 if win?(computer_choice, choice)

  prompt("Player score is #{player_score} and Computer score is #{computer_score}")
  break if player_score == 5 || computer_score == 5

  prompt("Play again? press 'y' to play again")
  answer = Kernel.gets().chomp()
  break unless answer.downcase() == 'y'
end

prompt("Player reached 5 wins!") if player_score == 5
prompt("Computer reached 5 wins!") if computer_score == 5
