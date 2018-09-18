# VALID_CHOICES = %w(rock paper scissors lizard spock)
# VALID_CHOICES = {
#   r: %w(scissors lizard),
#   p: %w(rock spock),
#   s: %w(paper lizard),
#   l: %w(spock paper),
#   sp: %w(rock scissors)
# }

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
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'spock' && second == 'scissors')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
    player_score += 1
  elsif win?(computer, player)
    prompt("Computer won!")
    computer_score += 1
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
    when 'r'
      'rock'
    when 'p'
      'paper'
    when 's'
      'scissors'
    when 'l'
      'lizard'
    when 'sp'
      'spock'
    end

    break if VALID_CHOICES.include?(choice)

    prompt("Not a valid choice...")
  end

  computer_choice = VALID_CHOICES.keys.sample()

  prompt("Your choice: #{choice} and Computer choice: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Play again? press 'y' to play again")
  answer = Kernel.gets().chomp()
  break unless answer.downcase() == 'y'
end
