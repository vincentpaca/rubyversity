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

class JellyBean < Dessert
  def initialize(name = nil, calories = nil, flavor = nil)
    @name = name
    @calories = calories
    @flavor = flavor.downcase
  end
  def flavor=(flavor)
    @flavor = flavor.downcase
  end
  def flavor
    puts @flavor
  end
  def delicious?
    return @flavor != "black licorice"
  end
end

j = JellyBean.new("jbean", 200, "black licOrice")
j.calories = 199
puts j.delicious?
puts j.healthy?
j.flavor
