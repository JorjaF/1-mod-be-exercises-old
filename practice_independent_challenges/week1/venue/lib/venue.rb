class Venue
  attr_reader :name,
              :capacity,
              :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patrons)
    @patrons << patrons
  end

  def yell_at_patrons
    cap_name = patrons.map do |patron|
      patron.upcase
    end
  end

  def over_capacity?
    @patrons.size > @capacity
  end

  def kick_out
    while self.over_capacity? == true
      @patrons.pop
    end
  end
end
