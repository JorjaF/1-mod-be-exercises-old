require './lib/pet_1'

RSpec.describe Pet_1 do
  before(:each) do
    @Spatz = Pet_1.new({name: "Spatz", type: :cat, age: :8})
  end

  it "exists" do
    expect(@Spatz).to be_instance_of(Pet_1)
  end
end