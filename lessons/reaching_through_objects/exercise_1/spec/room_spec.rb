require 'rspec'
require './lib/room'

RSpec.describe Room do

  it "can exists" do
    room = Room.new("x")
    expect(room).to be_an_instance_of(Room)
  end

  it "has a name" do 
    room = Room.new("bathroom")
    expect(room.name).to eq("bathroom")
  end
end