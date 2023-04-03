require 'rspec'
require './lib/room'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do 

  it "exists" do 
    building = Building.new("x", "y")
    expect(building).to be_an_instance_of(Building)
  end

  it "can have a number" do
  building = Building.new("623", "y")
  expect(building.building_number).to eq("623")
  end

  it "can have a building name" do 
    building = Building.new("623","Savills Apartment Building")
    expect(building.building_name).to eq("Savills Apartment Building")
  end

  it "can have apartments" do 
    building = Building.new("623", "Savills Apartment Building")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_5 = Apartment.new
    building.add_apartment(apt_1)
    building.add_apartment(apt_2)
    building.add_apartment(apt_5)
    expect(building.apartments).to eq([apt_1, apt_2, apt_5])
  end

end