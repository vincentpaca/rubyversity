
def combine_anagrams(words)
  arr_words = [] #container for anagrams
  
  words.each do |word1|
    grp_words = [] #container for anagra words
    w1 = word1.downcase #ignore case
    words.each do |word2|
      w2 = word2.downcase #ignore case
      if w1.scan(/[#{w2}]/).count == w2.length
        grp_words << w2
        words = words - [word2]
      end
    end
    arr_words << grp_words if grp_words.size > 0
  end
  return arr_words
end
  
#input
arr = ['cars', 'for', 'potatoes', 'racS', 'four', 'scar', 'creams', 'sCream', 'foru', 'ourf', 'haha', 'Ahha']
#output => [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]

#print values in the arrays
array = combine_anagrams(arr)
array.each do |words|
  print "["
  words.each do |word|
    print "#{word}, "
  end
  print "]\n"
end
