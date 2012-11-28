#reyco

def combine_anagrams(words)
  words.group_by {|words| words.downcase.split(//).sort.to_s}.values
end




# =====Testing ==============================================================

test_data = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']


puts "===========Anagram Test==============="
puts "Input"
print test_data
puts
puts "Output"
print combine_anagrams test_data
puts




