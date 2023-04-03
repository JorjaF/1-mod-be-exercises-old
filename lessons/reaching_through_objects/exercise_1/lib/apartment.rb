class Apartment
  attr_reader :rented
  
  def initialize(rented = false)
    @rented = rented
  end

  def is_rented?
    @rented = true
  end
end