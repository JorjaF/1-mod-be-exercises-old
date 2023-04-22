require './lib/dish'
require 'rspec'

RSpec.describe Dish do

  it "exists" do
    dish = Dish.new("Couscous Salad", :appetizer)
    expect(dish).to be_instance_of(Dish)
    expect(dish.name).to eq("Couscous Salad")
    expect(dish.category).to eq(:appetizer)
  end
end
