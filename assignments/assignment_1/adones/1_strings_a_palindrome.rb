
def palindrome?(word)
  w = word.gsub(/[0-9 -@[-`{-~]]/, '').downcase #ignore case and non-words
  puts w == w.reverse #determine if palindrome
end

palindrome?("A but tuba.") #=> true
palindrome?("Not a palindrome") #=> false
palindrome?("A man, a plan, a canal: Panama") #=> true
