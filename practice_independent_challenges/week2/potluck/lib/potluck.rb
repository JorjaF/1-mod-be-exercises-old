class Potluck
  attr_reader :date,
              :dishes
  
  attr_accessor :dish

  def initialize(date, dishes = [])
    @date = date
    @dishes = dishes
  end

  def add_dish(dishes)
    @dishes << dishes
  end

  def get_all_from_category(category)
    dishes = @dishes.select do |dish|
      dish.category == category
    end
  end
end
