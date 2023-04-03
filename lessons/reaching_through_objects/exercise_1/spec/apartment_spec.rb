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

  it "can have up to 4 rooms and list them alphabetically." do 
    apartment = Apartment.new
    apartment.add_room("bathroom")
    apartment.add_room("laundry")
    apartment.add_room("kitchen")
    apartment.add_room("bedroom")
    expect(apartment.rooms).to eq(["bathroom", "bedroom", "kitchen", "laundry"])

  end
end