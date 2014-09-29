# Create a board. 
# Create decks of cards.
# Get player name
# Create a way to deal the beginning of the game. 
# Loop
  # Player plays. 
  # Dealer plays.
  # Winning logic.
  # "Play again?" option. 
# End loop

require 'pry'

def make_board(player_cards, dealer_cards)
  system 'clear'
  puts "====================================="
  puts "|| Dealer ||"
  puts "-------------------------------------"
  card_list(dealer_cards)
  puts "====================================="
  puts "|| #{PLAYER_NAME} ||"
  puts "-------------------------------------"
  card_list(player_cards)
  puts "====================================="
end

two_decks = {"Ace of Diamonds" => [1, 11], "Two of Diamonds" => 2, "Three of Diamonds" => 3,
"Four of Diamonds" => 4, "Five of Diamonds" => 5, "Six of Diamonds" => 6, "Seven of Diamonds" => 7,
"Eight of Diamonds" => 8, "Nine of Diamonds" => 9, "Ten of Diamonds" => 10, "Jack of Diamonds" => 10,
"Queen of Diamonds" => 10, "King of Diamonds" => 10, "Ace of Spades" => [1, 11], 

"Two of Spades" => 2, "Three of Spades" => 3,"Four of Spades" => 4, "Five of Spades" => 5, "Six of Spades" => 6, 
"Seven of Spades" => 7, "Eight of Spades" => 8, "Nine of Spades" => 9, "Ten of Spades" => 10, "Jack of Spades" => 10,
"Queen of Spades" => 10, "King of Spades" => 10, 

"Ace of Hearts" => [1, 11], "Two of Hearts" => 2, "Three of Hearts" => 3,
"Four of Hearts" => 4, "Five of Hearts" => 5, "Six of Hearts" => 6, "Seven of Hearts" => 7,
"Eight of Hearts" => 8, "Nine of Hearts" => 9, "Ten of Hearts" => 10, "Jack of Hearts" => 10,
"Queen of Hearts" => 10, "King of Hearts" => 10, 

"Ace of Clubs" => [1, 11], "Two of Clubs" => 2, "Three of Clubs" => 3,
"Four of Clubs" => 4, "Five of Clubs" => 5, "Six of Clubs" => 6, "Seven of Clubs" => 7,
"Eight of Clubs" => 8, "Nine of Clubs" => 9, "Ten of Clubs" => 10, "Jack of Clubs" => 10,
"Queen of Clubs" => 10, "King of Clubs" => 10, 

"Ace of Diamonds2" => [1, 11], "Two of Diamonds2" => 2, "Three of Diamonds2" => 3,
"Four of Diamonds2" => 4, "Five of Diamonds2" => 5, "Six of Diamonds2" => 6, "Seven of Diamonds2" => 7,
"Eight of Diamonds2" => 8, "Nine of Diamonds2" => 9, "Ten of Diamonds2" => 10, "Jack of Diamonds2" => 10,
"Queen of Diamonds2" => 10, "King of Diamonds2" => 10, 

"Ace of Spades2" => [1, 11], "Two of Spades2" => 2, "Three of Spades2" => 3,
"Four of Spades2" => 4, "Five of Spades2" => 5, "Six of Spades2" => 6, "Seven of Spades2" => 7,
"Eight of Spades2" => 8, "Nine of Spades2" => 9, "Ten of Spades2" => 10, "Jack of Spades2" => 10,
"Queen of Spades2" => 10, "King of Spades2" => 10, "Ace of Hearts2" => [1, 11], 

"Two of Hearts2" => 2, "Three of Hearts2" => 3,
"Four of Hearts2" => 4, "Five of Hearts2" => 5, "Six of Hearts2" => 6, "Seven of Hearts2" => 7,
"Eight of Hearts2" => 8, "Nine of Hearts2" => 9, "Ten of Hearts2" => 10, "Jack of Hearts2" => 10,
"Queen of Hearts2" => 10, "King of Hearts2" => 10, 

"Ace of Clubs2" => [1, 11], "Two of Clubs2" => 2, "Three of Clubs2" => 3,
"Four of Clubs2" => 4, "Five of Clubs2" => 5, "Six of Clubs2" => 6, "Seven of Clubs2" => 7,
"Eight of Clubs2" => 8, "Nine of Clubs2" => 9, "Ten of Clubs2" => 10, "Jack of Clubs2" => 10,
"Queen of Clubs2" => 10, "King of Clubs2" => 10}


dealer_cards = {}

player_cards = {}

def card_list(deck)
  puts "Card List:"
  deck.each do |key, value|
    puts "#{key} | #{value}"
  end
end

def deal(deck, player_deck)
  ace(deck.to_a.sample(1).to_h, player_deck)
end

def ace(array)
  if array.length > 1 && player_deck.sum > 10
    array.pop!
  elsif array.length > 1 && player_deck.sum <= 10
    array.shift!
  else
    array
  end
end

def deck_sum(player_cards)
  player_cards.values.sum
end

def player_sum
  player_cards.deck_sum
end

def dealer_sum
  dealer_cards.deck_sum
end

def first_deal(deck, player_cards, dealer_cards)
  2.times do 
    player_cards.merge!(deal(deck))
    dealer_cards.merge!(deal(deck))
  end
end

def player_play(deck, player_cards, dealer_cards)
  loop do 
    puts "Hit or Stay? (h/s)"
    hit_stay = gets.chomp
    if hit_stay == "h"
      player_cards.merge!(deal(deck))
      make_board(player_cards, dealer_cards)
      break
    elsif hit_stay == "s"
      break
    end
  end
end

def computer_play(deck, player_cards, dealer_cards)
  if sum(dealer_cards.values) < 17
    dealer_cards.merge!(deal(deck))
    make_board(player_cards, dealer_cards)
  end
end

def sum(array)
  array.inject(:+)
end



puts "= = = = = = = = = = = = = = = = = = = = = = = ="
puts "+ + + + Welcome to Justin's Black Jack! + + + +"
puts "= = = = = = = = = = = = = = = = = = = = = = = ="
puts "Please enter your name:"
PLAYER_NAME = gets.chomp
first_deal(two_decks, player_cards, dealer_cards)
make_board(player_cards, dealer_cards)


loop do
player_play(two_decks, player_cards, dealer_cards)
computer_play(two_decks, player_cards, dealer_cards)
end

