
  def fibo_finder(inpuit)
    a = 0
    b = 1
    num_arr = Array.new
    number = 0
    for l in 0...inpuit do
      num_arr.push(a)
      num_arr.push(b)
      a = a+b
      b = a+b      
    end
    puts num_arr[inpuit]    
  end
  
 fibo_finder(4) #=> returns 3, since the sequence is: 0 1 1 2 3 5 8 13....
