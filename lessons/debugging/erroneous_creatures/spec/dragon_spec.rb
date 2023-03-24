require 'rspec'
require'./lib/dragon'

RSpec.describe Dragon do
  xit "has a name" do
    dragon = Dragon.new("Ramoth", :gold, "Lessa")

    expect(dragon.name).to eq("Ramoth")
  end

  it "has a rider" do
    dragon = Dragon.new("Ramoth", :gold, "Lessa")

    expect(dragon.rider).to eq("Lessa")
  end

  xit "has a color" do
    dragon = Dragon.new("Ramoth", :gold, "Lessa")

    expect(dragon.color).to eq(:gold)
  end

  xit "can be a different dragon" do
    dragon = Dragon.new("Mnementh", :bronze, "F'lar")

    expect(dragon.name).to eq("Mnementh")
  end

  xit "a different dragon can also have a different rider" do
    dragon = Dragon.new("Mnementh", :bronze, "F'lar")

    expect(dragon.rider).to eq("F'lar")
  end

  xit "a different dragon can be a different color" do
    dragon = Dragon.new("Mnementh", :bronze, "F'lar")

    expect(dragon.color).to eq(:bronze)
  end

  xit "is born hungry" do
    dragon = Dragon.new("Canth", :brown, "F'nor")

    expect(dragon.hungry?).to eq(true)
  end

  xit "needs to eat alot to be satisfied" do
    dragon = Dragon.new("Canth", :brown, "F'nor")

    expect(dragon.hungry?).to eq(true)
    dragon.eat
    expect(dragon.hungry?).to eq(true)
    dragon.eat
    expect(dragon.hungry?).to eq(true)
    dragon.eat
    expect(dragon.hungry?).to eq(false)
  end

  xit "can breath fire" do
    dragon = Dragon.new("Canth", :brown, "F'nor")

    dragon.eat
    dragon.eat
    dragon.eat

    expect(dragon.hungry?).to eq(false)
    expect(dragon.breathe_fire).to eq(true)
  end

  xit "is hungry after breathing fire" do
    dragon = Dragon.new("Canth", :brown, "F'nor")

    dragon.eat
    dragon.eat
    dragon.eat
    dragon.breathe_fire

    expect(dragon.hungry?).to eq(true)
  end

  xit "can not breathe fire when hungry" do
    dragon = Dragon.new("Canth", :brown, "F'nor")

    expect(dragon.hungry?).to eq(true)
    expect(dragon.breathe_fire).to eq(false)
  end
end
