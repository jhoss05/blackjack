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

def make_board
  system 'clear'
  puts "= = = = = = = = = = = = = = = = = = ="
  puts "|| Dealer ||"
  puts "- - - - - - - - - - - - - - - - - - -"
  puts "Cards: #{DEALER_CARDS}"
  puts "= = = = = = = = = = = = = = = = = = ="
  puts "|| #{PLAYER_NAME} ||"
  puts "- - - - - - - - - - - - - - - - - - -"
  puts "Cards: #{PLAYER_CARDS}"
  puts "= = = = = = = = = = = = = = = = = = ="
end

two_decks = {"Ace of Diamonds" => [1, 11], "Two of Diamonds" => 2, "Three of Diamonds" => 3,
"Four of Diamonds" => 4, "Five of Diamonds" => 5, "Six of Diamonds" => 6, "Seven of Diamonds" => 7,
"Eight of Diamonds" => 8, "Nine of Diamonds" => 9, "Ten of Diamonds" => 10, "Jack of Diamonds" => 10,
"Queen of Diamonds" => 10, "King of Diamonds" => 10, "Ace of Spades" => [1, 11], "Two of Spades" => 2, "Three of Spades" => 3,
"Four of Spades" => 4, "Five of Spades" => 5, "Six of Spades" => 6, "Seven of Spades" => 7,
"Eight of Spades" => 8, "Nine of Spades" => 9, "Ten of Spades" => 10, "Jack of Spades" => 10,
"Queen of Spades" => 10, "King of Spades" => 10, "Ace of Hearts" => [1, 11], "Two of Hearts" => 2, "Three of Hearts" => 3,
"Four of Hearts" => 4, "Five of Hearts" => 5, "Six of Hearts" => 6, "Seven of Hearts" => 7,
"Eight of Hearts" => 8, "Nine of Hearts" => 9, "Ten of Hearts" => 10, "Jack of Hearts" => 10,
"Queen of Hearts" => 10, "King of Hearts" => 10, "Ace of Clubs" => [1, 11], "Two of Clubs" => 2, "Three of Clubs" => 3,
"Four of Clubs" => 4, "Five of Clubs" => 5, "Six of Clubs" => 6, "Seven of Clubs" => 7,
"Eight of Clubs" => 8, "Nine of Clubs" => 9, "Ten of Clubs" => 10, "Jack of Clubs" => 10,
"Queen of Clubs" => 10, "King of Clubs" => 10, "Ace of Diamonds2" => [1, 11], "Two of Diamonds2" => 2, "Three of Diamonds2" => 3,
"Four of Diamonds2" => 4, "Five of Diamonds2" => 5, "Six of Diamonds2" => 6, "Seven of Diamonds2" => 7,
"Eight of Diamonds2" => 8, "Nine of Diamonds2" => 9, "Ten of Diamonds2" => 10, "Jack of Diamonds2" => 10,
"Queen of Diamonds2" => 10, "King of Diamonds2" => 10, "Ace of Spades2" => [1, 11], "Two of Spades2" => 2, "Three of Spades2" => 3,
"Four of Spades2" => 4, "Five of Spades2" => 5, "Six of Spades2" => 6, "Seven of Spades2" => 7,
"Eight of Spades2" => 8, "Nine of Spades2" => 9, "Ten of Spades2" => 10, "Jack of Spades2" => 10,
"Queen of Spades2" => 10, "King of Spades2" => 10, "Ace of Hearts2" => [1, 11], "Two of Hearts2" => 2, "Three of Hearts2" => 3,
"Four of Hearts2" => 4, "Five of Hearts2" => 5, "Six of Hearts2" => 6, "Seven of Hearts2" => 7,
"Eight of Hearts2" => 8, "Nine of Hearts2" => 9, "Ten of Hearts2" => 10, "Jack of Hearts2" => 10,
"Queen of Hearts2" => 10, "King of Hearts2" => 10, "Ace of Clubs2" => [1, 11], "Two of Clubs2" => 2, "Three of Clubs2" => 3,
"Four of Clubs2" => 4, "Five of Clubs2" => 5, "Six of Clubs2" => 6, "Seven of Clubs2" => 7,
"Eight of Clubs2" => 8, "Nine of Clubs2" => 9, "Ten of Clubs2" => 10, "Jack of Clubs2" => 10,
"Queen of Clubs2" => 10, "King of Clubs2" => 10}

DEALER_CARDS = {}

dealer_cards = {}

PLAYER_CARDS = {}

def first_deal 
  dealer_cards = two_decks.sample
end

def deal(deck)
  deck.keys.sample
  deck.select { |k,v| k == sample }
end









# puts "= = = = = = = = = = = = = = = = = = = = = = = ="
# puts "+ + + + Welcome to Justin's Black Jack! + + + +"
# puts "= = = = = = = = = = = = = = = = = = = = = = = ="
# puts "Please enter your name:"
# PLAYER_NAME = gets.chomp
# make_board

p deal(two_decks)





















