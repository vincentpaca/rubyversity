def fibo_finder(n)
  curr = 0
  succ = 1
  n.times do |i|
    curr, succ = succ, curr + succ
 
 #   curr = succ
 #   succ = curr + succ
  end
  return curr
end

#0 1 1 2 3 5 8

puts fibo_finder(4)
