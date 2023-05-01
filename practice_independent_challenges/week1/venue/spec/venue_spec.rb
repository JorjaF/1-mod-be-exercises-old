require 'rspec'
require './lib/venue'

describe Venue do
 
  it "exists amd has attributes" do 
    venue = Venue.new('Bluebird', 4)
    expect(venue).to be_a(Venue)
    expect(venue.name).to eq("Bluebird")
    expect(venue.capacity).to eq(4)
  end

  it "starts with no patrons" do 
    venue = Venue.new('Bluebird', 4)
    expect(venue.patrons).to eq([])
  end

  it "can add patrons" do 
    venue = Venue.new('Bluebird', 4)
    venue.add_patron('Mike')
    venue.add_patron('Megan')
    venue.add_patron('Bob')
    expect(venue.patrons).to eq(["Mike", "Megan", "Bob"])
  end

  it "can yell at patrons" do 
    venue = Venue.new('Bluebird', 4)
    venue.add_patron('Mike')
    venue.add_patron('Megan')
    venue.add_patron('Bob')
    expect(venue.yell_at_patrons).to eq(["MIKE", "MEGAN", "BOB"])
  end

  it 'can be over capacity' do 
    venue = Venue.new('Bluebird', 4)
    venue.add_patron('Mike')
    venue.add_patron('Megan')
    venue.add_patron('Bob')
    expect(venue.over_capacity?).to eq(false)
    venue.add_patron('James')
    venue.add_patron('Cat')
    expect(venue.over_capacity?).to eq(true)
  end
end
