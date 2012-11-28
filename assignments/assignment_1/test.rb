require 'test/unit'

Dir[File.join(".", "**/*.rb")].each do |file|
  require file
  puts "Testing #{file}"

  @@file = file

  class AssignmentOne < Test::Unit::TestCase
    def test_palindrome
      assert_equal true, palindrome?("A but a Tuba.")
      assert_equal false, palindrome?("Not a palindrome")
      assert_equal true, palindrome?("A man, a plan, a  canal: Panama.")
      assert_equal true, palindrome?("@xXx__pal-lap__xXx@")
    end

    def test_word_count
      assert_equal({ "pap" => 3, "parap" => 1, "love" => 1, "ko" => 1, "to" => 1 }, count_words("Pap parap pap pap love ko to"))
      assert_equal( { "hello" => 2, "world" => 3 }, count_words("Hello, hello, hello! World --world."))
    end

    def test_anagram
      assert_equal([["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]], combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']), "Error in #{@@file}")
    end
  end
end
