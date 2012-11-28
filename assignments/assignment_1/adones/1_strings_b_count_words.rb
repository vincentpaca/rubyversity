def count_words(string)
  string = string.downcase  #ignore case
  arr_str = string.split #string as array
  
  hash = {}
  
  arr_str.each do |str|
    unless str.scan(/[0-9 -@[-`{-~]]/).count > 0 #ignore non-words
      c = string.scan(str).count #count number of occurences
      hash[str] = c #insert word=>value to hash
    end
  end
  
  return hash
end

hash = count_words("ha HA Pap paraP pap pap love ko to 456!!!! @@@@@ ~~~~~ qwrew@")

#display hash content=================

hash.each{
  |key, value|
  puts key + " => " + value.to_s
}
