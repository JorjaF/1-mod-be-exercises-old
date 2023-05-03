class Potluck
  
  attr_reader :date, 
              :dishes
            
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      dish.category == category
    end
  end

  def menu
    return_hash = {}
    
    @dishes.each do |dish|
      if dish.category == :appetizer
        return_hash[:appetizers] = [] if return_hash[:appetizers].nil?
        return_hash[:appetizers] << dish.name
      elsif dish.category == :entre
        return_hash[:entres] = [] if return_hash[:entres].nil?
        return_hash[:entres] << dish.name
      elsif dish.category == :dessert
        return_hash[:desserts] = [] if return_hash[:desserts].nil?
        return_hash[:desserts] << dish.name
      end
    end
    return_hash.each do |key, value|
      return_hash[key] = value.sort
    end
    return_hash
  end

  def ratio(category)
    (get_all_from_category(category).length.to_f / @dishes.length) * 100
  end
end
