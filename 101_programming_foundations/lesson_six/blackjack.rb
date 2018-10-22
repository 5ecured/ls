JQK = {
  jack: 10,
  queen: 10,
  king: 10
}

def get_card
  [2, 3, 4, 5, 6, 7, 8, 10, JQK[:jack], JQK[:queen], JQK[:king]].sample
end

def dealer_turn
  ['hit', 'stay'].sample
end

player_score = 0
dealer_score = 0
a = get_card
b = get_card
c = a + b
d = get_card
e = get_card
f = d + e


loop do
  system 'clear'
  puts "---------------"
  puts "Game starts now"
  puts "---------------"
  puts "Player's starting cards are #{a} and #{b} for a total of #{player_score += c}"
  puts "Dealer's starting cards are #{d} and #{e} for a total of #{dealer_score += f}"
  while player_score < 21 do
    puts "PLAYER CURRENT SCORE: #{player_score}. hit or stay?"
    answer = gets.chomp
    if answer == 'hit'
      z = get_card
      puts "#{z} has been added to player's score"
      player_score += z
    elsif answer == 'stay'
      option = dealer_turn
      puts "Dealer has chosen: #{option}"
      if option == 'hit'
        y = get_card
        puts "#{y} has been added to dealer's score"
        dealer_score += y
        puts "DEALER CURRENT SCORE: #{dealer_score}"
        if dealer_score > 21
          puts "DEAD. Dealer score is #{dealer_score}"
          break
        elsif dealer_score == 21
          puts "BLACKJACK!!!! Dealer final score: #{dealer_score}"
          break
        end
      elsif option == 'stay'
        if player_score > dealer_score && player_score < 21
          puts("In this case the player has won since player has #{player_score} and dealer only has #{dealer_score}")
        elsif dealer_score > player_score && dealer_score < 21
          puts("In this case the dealer has won since dealer has #{dealer_score} and player only has #{player_score}")
        elsif player_score == dealer_score
          puts "Its a draw! player score is #{player_score} and dealer score is #{dealer_score}"
        elsif dealer_score == 21
          puts "BLACKJACK!!!! Dealer final score: #{dealer_score}"
        end
        break
      end
      # puts "DEALER CURRENT SCORE: #{dealer_score}"
    end
  end

  if player_score > 21
    puts "DEAD. Player final score: #{player_score}"
  elsif player_score == 21
    puts "BLACKJACK!!!! Player final score: #{player_score}"
  end
  break
end




















