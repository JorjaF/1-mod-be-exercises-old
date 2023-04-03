class Apartment
  attr_reader :rented, :rooms
  attr_accessor :rooms
  
  def initialize(rented = false, rooms = [])
    @rented = rented
    @rooms = rooms
  end

  def is_rented?
    @rented = true
  end

  def add_room(room)
    @rooms << room
    @rooms.sort!
  end
    
end