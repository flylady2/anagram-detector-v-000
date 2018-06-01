class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    result = [] #need to iterated over anagrams to see if any of the elements are composed of the same letters as word
    new_anagrams = (%w(anagrams)).collect {|item| # iterating over anagrams and splitting each word into an array of characters.
      item.split("").sort}
    new_anagrams. each do |item|
      if item == word.split("").sort
        result << word
      else
        result
      end
    end

  end
end
