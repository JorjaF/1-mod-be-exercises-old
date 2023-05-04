require './lib/pet'

RSpec.describe Pet do

  it 'exists and has attributes' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})    
    expect(samson).to be_a(Pet)
    expect(samson.name).to eq("Samson")
    expect(samson.type).to eq(:dog)
    expect(samson.age).to eq(3)
  end

  it "starts off not being fed" do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    expect(samson.fed?).to eq(false)
  end

  it "can be fed" do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    samson.feed
    expect(samson.fed?).to eq(true)
  end
end
