
  def count_words(string)
     hash = Hash.new
     string.downcase.scan(/\w+/) {|w| 
        hash[w] = 0
        string.downcase.scan(/\w+/) {|y| 
        if w == y
          hash[w] = hash[w]+1
        end
     
      }
      }
      puts hash
  end
  


count_words("Pap parap pap pap love ko to")
  #=> { "pap" => 3, "parap" => 1, "love" => 1, "ko" => 1, "to" => 1 }
