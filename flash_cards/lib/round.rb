class Round
  attr_reader :deck,
              :turns 

  def initialize(deck)
    @deck = deck
    @turns = []
          
  end

  def current_card
    @current_card = @deck.cards.first
  end

  def take_turn(guess)
    @turns << Turn.new(guess, current_card)
    @deck.cards.shift
    @turns.last
  end

  def number_correct
    @turns.find_all do |turn|
      turn.correct? == true
    end.count
  end

  def number_correct_by_category(category)
    temp = @turns.find_all do |turn|
      turn.correct? == true

    temp.find_all do |turn|
        turn.card.category == category
      end
    end.count
  end

  def percent_correct
    (number_correct.to_f / @turns.count.to_f) * 100
  end

  def percent_correct_by_category(category)
    (number_correct_by_category(category).to_f / @turns.count.to_f) * 100
  end

end
