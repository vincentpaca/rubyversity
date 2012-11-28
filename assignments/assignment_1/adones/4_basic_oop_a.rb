class Dessert
  def initialize(name = nil, calories = nil)
    @name = name
    @calories = calories
  end
  
  def name=(name)
    @name = name
  end
  def name
    puts @name
  end
  def calories=(cal)
    @calories = cal
  end
  def calories
    puts @calories
  end
  def healthy?
    return @calories < 200
  end
  def delicious?
    return true
  end
end

d = Dessert.new("banana", 199)
d.name
d.calories = 200
puts d.healthy?
