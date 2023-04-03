require 'rspec'
require './lib/room'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do 

  it "exists" do 
    apartment = Building.new
    expect(building).to be_an_instance_of(Building)
  end
end