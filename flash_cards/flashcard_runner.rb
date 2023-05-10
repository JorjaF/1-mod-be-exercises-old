require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

  card_1 = Card.new("What is 5 + 5?", "10", :STEM)
  card_2 = Card.new("What is Rachel's favorite animal?", "Panda", :Turing_Staff)
  card_3 = Card.new("What is Mike's middle name?", "Nobody knows", :Turing_Staff)
  card_4 = Card.new("What cardboard cutout lives at Turing?", "Justin Bieber", :Pop_Culture)
  deck = Deck.new([card_1, card_2, card_3, card_4])
  round = Round.new(deck)

  
  total_cards = deck.count
  puts "Welcome! You're playing with #{total_cards} cards."
  deck.count.times do
    puts round.current_card.question
    guess = gets.chomp
    new_turn = round.take_turn(guess)
    puts round.turns.last.feedback
  end
  categories = round.deck.cards.map do |card|
    card.category
  end.uniq
  puts "****** Game over! ******"
  puts "You had #{round.number_correct} correct guesses out of #{total_cards} for a total score of #{round.percent_correct}%."
  categories.each do |category|
    puts "#{category} - #{round.percent_correct_by_category(category)}% correct"
  end
