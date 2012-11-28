#reyco

def fibo_finder(input)
  case input
    when 0
      return 0
    when 1
      return 1
    else
      return fibo_finder(input-1)+fibo_finder(input-2)
  end
end




# =====Testing ==============================================================
print "fibo_finder(4) is ", fibo_finder(4)

puts
puts
