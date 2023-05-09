require "./lib/card"
require "./lib/deck"

RSpec.describe Deck do

  it "exists and has attributes" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    expect(deck).to be_instance_of(Deck)
  end

  it "can have cards" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    expect(deck.cards).to eq([card_1, card_2, card_3])
  end

  it "can count cards" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography) 
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM) 
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    deck.count
    expect(deck.count).to eq(3)
  end

  it "can have cards in a category" do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography) 
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM) 
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)  
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    deck.cards_in_category(:STEM)
    expect(deck.cards_in_category(:STEM)).to eq([card_2, card_3])
    expect(deck.cards_in_category(:Geography)).to eq([card_1])
    expect(deck.cards_in_category("Pop Culture")).to eq([])
  end
end



# pry(main)> deck = Deck.new(cards)
# #=> #<Deck:0x00007fa160a38ed8...>

# pry(main)> deck.cards
# #=> [#<Card:0x00007fa16104e160...>, #<Card:0x00007fa160a62e90...>, #<Card:0x00007fa161a136f0...>]

# pry(main)> deck.count
# #=> 3

# pry(main)> deck.cards_in_category(:STEM)
# #=> [#<Card:0x00007fa160a62e90...>, #<Card:0x00007fa161a136f0...>]

# pry(main)> deck.cards_in_category(:Geography)
# #=> [#<Card:0x00007fa16104e160...>]

# pry(main)> deck.cards_in_category("Pop Culture")
# #=> []
