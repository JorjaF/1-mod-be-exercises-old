require 'rspec'
require './lib/room'
require './lib/apartment'

RSpec.describe Apartment do 

  it "exists" do 
    apartment = Apartment.new
    expect(apartment).to be_an_instance_of(Apartment)
  end

  it "can be rented" do
    apartment = Apartment.new
    expect(apartment.rented).to eq(false)
    apartment.is_rented?
    expect(apartment.rented).to eq(true)
  end

  
end