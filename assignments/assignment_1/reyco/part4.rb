#reyco

class Dessert
  attr_accessor :name
  attr_accessor :calories

  def initialize(name, calories)
    @name, @calories = name, calories
  end

  def healthy?
    @calories < 200 and delicious?
  end

  def delicious?
    true
  end
  
end

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    @flavor.downcase != "black licorice"
  end
end






# =====Testing ==============================================================

# Part (a)

puts "Part (a)"
puts

reyco_dessert = Dessert.new("Mansanas", 100)
print "name: ", reyco_dessert.name
print "\ncalories: ", reyco_dessert.calories
print "\nhealthy?: ", reyco_dessert.healthy?


puts
puts

reyco_dessert.name = "Ice Cream"
reyco_dessert.calories = 9000
print "name: ", reyco_dessert.name
print "\ncalories: ", reyco_dessert.calories
print "\nhealthy?: ", reyco_dessert.healthy?

puts
puts


# Part (b)

puts "Part (b)"
puts

reyco_jelly_bean_dessert = JellyBean.new("Selecta", 100, "mango")
print "name: ", reyco_jelly_bean_dessert.name
print "\nflavor: ", reyco_jelly_bean_dessert.flavor
print "\ncalories: ", reyco_jelly_bean_dessert.calories
print "\ndelicious?: ", reyco_jelly_bean_dessert.delicious?
print "\nhealthy?: ", reyco_jelly_bean_dessert.healthy?

puts
puts

reyco_jelly_bean_dessert = JellyBean.new("Magnolia", 100, "black licorice")
print "name: ", reyco_jelly_bean_dessert.name
print "\nflavor: ", reyco_jelly_bean_dessert.flavor
print "\ncalories: ", reyco_jelly_bean_dessert.calories
print "\ndelicious?: ", reyco_jelly_bean_dessert.delicious?
print "\nhealthy?: ", reyco_jelly_bean_dessert.healthy?

puts
puts

reyco_jelly_bean_dessert = JellyBean.new("Nestle", 700, "mango")
print "name: ", reyco_jelly_bean_dessert.name
print "\nflavor: ", reyco_jelly_bean_dessert.flavor
print "\ncalories: ", reyco_jelly_bean_dessert.calories
print "\ndelicious?: ", reyco_jelly_bean_dessert.delicious?
print "\nhealthy?: ", reyco_jelly_bean_dessert.healthy?

puts
puts







