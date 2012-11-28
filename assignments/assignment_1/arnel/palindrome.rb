   
   def palindrome?(p)
     str =  p.downcase.scan(/\w/)
    if str.reverse == str
      puts 'true'
    else 
      puts 'false'
    end
  end

  palindrome? "A fbut tuba." #=> true
  palindrome? "Not a palindrome" #=> false
  palindrome? "A man, a plan, a canal: Panama"  #=> true
