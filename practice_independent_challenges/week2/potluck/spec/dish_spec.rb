require './lib/dish'
require 'rspec'

RSpec.describe Dish do
    
  it "exists and has atrributes" do
    dish = Dish.new("Couscous Salad", :appetizer)
    expect(dish).to be_a(Dish)
    expect(dish.name).to eq("Couscous Salad")
    expect(dish.category).to eq(:appetizer)
  end
end
