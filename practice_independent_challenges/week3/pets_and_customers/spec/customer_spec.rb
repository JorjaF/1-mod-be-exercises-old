require './lib/pet'
require './lib/customer'

  RSpec.describe Customer do

    it "exists and has attributes" do
      joel = Customer.new("Joel", 2)
      expect(joel).to be_a(Customer)
      expect(joel.name).to eq("Joel")
      expect(joel.id).to eq(2)
    end

    it "starts with no pets" do
      joel = Customer.new("Joel", 2)
      expect(joel.pets).to eq([])
    end

    it "can adopt pets" do
      joel = Customer.new("Joel", 2)
      samson = Pet.new({name: "Samson", type: :dog, age: 3})
      lucy = Pet.new({name: "Lucy", type: :cat, age: 12})
      joel.adopt(samson)
      joel.adopt(lucy)
      expect(joel.pets).to eq([samson, lucy])
    end

    it "starts with a 0 balance" do
      joel = Customer.new("Joel", 2)
      expect(joel.outstanding_balance).to eq(0)
    end

    it "gets charged to adopt pets" do
      joel = Customer.new("Joel", 2)
      joel.charge(15)
      joel.charge(7)
      expect(joel.outstanding_balance).to eq(22)
    end
  end

