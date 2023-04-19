require './lib/dish'
require './lib/potluck'
require 'rspec'

RSpec.describe Potluck do

  it "exists" do
    potluck = Potluck.new("7-13-18")
    expect(potluck).to be_instance_of(Potluck)
  end

  it "has a date" do
    potluck = Potluck.new("7-13-18")
    expect(potluck.date).to eq("7-13-18")
  end

  it "has a list of dishes" do
    potluck = Potluck.new("7-13-18")
    expect(potluck.dishes).to eq([])
  end
end
