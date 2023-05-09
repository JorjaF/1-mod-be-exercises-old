require "./lib/turn"
require "./lib/card"

RSpec.describe Turn do

  it "exists and has attributes" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau",card)
    expect(turn).to be_instance_of(Turn)
    expect(turn.card).to eq(card)
    expect(turn.guess).to eq("Juneau")
  end

  it "can have a card" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau",card)
    expect(turn.card).to eq(card)
  end

  it "can make a guess" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau",card)
    guess = turn.guess
    expect(guess).to eq("Juneau")
  end
  
  it "can have a correct guess" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau",card)
    guess = turn.guess
    expect(turn.correct?).to eq(true)
  end

  it "can give feedback on a correct guess" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau",card)
    guess = turn.guess
    expect(turn.feedback).to eq("Correct!")
  end

  it "can have an incorrect guess" do
    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)
    turn.card
    guess = turn.guess
    expect(turn.correct?).to eq(false)
    expect(turn.feedback).to eq("Incorrect.")
  end
end
