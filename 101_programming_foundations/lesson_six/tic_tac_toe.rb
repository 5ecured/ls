INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts "|-----+-----+-----|"
  puts "|     |     |     |"
  puts "|  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  |"
  puts "|     |     |     |"
  puts "|-----+-----+-----|"
  puts "|     |     |     |"
  puts "|  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  |"
  puts "|     |     |     |"
  puts "|-----+-----+-----|"
  puts "|     |     |     |"
  puts "|  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  |"
  puts "|     |     |     |"
  puts "|-----+-----+-----|"
end

# you can choose what data structure to use, but hash is good as the key represents the square in the box, and value represents
# the symbol (X or O)
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board # so this contains a hash like {1 => ' ', 2 => ' ', 3 => ' ', etc.}
end

def empty_squares(brd) # this will only inspect not mutate, unlike the method 'player_places_piece!'
  # this will simply return an array of integers that have empty value.
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd) # this will mutate, so notice the !. this is pass by reference
  square = ''
  loop do
    prompt "Choose a square #{empty_squares(brd).join(' ')}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Invalid choice")
  end
  brd[square] = PLAYER_MARKER # this sets the square in the box to be X. Remember its a hash. this mutates line 40 argument
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # columns
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  winning_lines.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
       brd[line[1]] == COMPUTER_MARKER &&
       brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

loop do
  # now board has the return value of the method 'initialize_board'
  board = initialize_board

  loop do
    # then you can pass board into the method 'display board'
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt("#{detect_winner(board)} won!")
  else
    prompt("Its a tie")
  end

  prompt("Play again? Y or N")
  answer = gets.chomp.downcase
  break if answer == "n"
end

prompt("Thanks for playing")
