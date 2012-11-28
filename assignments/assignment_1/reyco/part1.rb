#reyco

def palindrome?(string)
  string = string.downcase.gsub(/[^a-z]/,'')
  return string == string.reverse
end


def count_words(string)
  ret = {}
  string.downcase.gsub(/[^a-z\s]/,'').gsub(/\s\s+/,' ').split(/\b\s/).map{ |a| ret[a] = ret[a] ? ret[a] + 1 : 1 }
  ret
end





# =====Testing ==============================================================


def print_palindrome_test(string)
  puts string, palindrome?(string)
  puts
end

puts "===========Palindrome Test==============="
print_palindrome_test("A but tuba.") #=> true
print_palindrome_test("Not a palindrome") #=> false
print_palindrome_test("A man, a plan, a canal: Panama") #=> true


puts

puts "===========Count Test==============="
puts "Pap parap pap pap love ko to"
print count_words("Pap parap pap pap love ko to")

puts
