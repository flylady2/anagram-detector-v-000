class Anagram
  attr_accessor :word

  def initialize(anagram)
    @anagram = anagram
  end

  def match(array)
    result = [] #need to iterated over anagrams to see if any of the elements are composed of the same letters as word
    new_array = array.collect {|item| # iterating over anagrams and splitting each word into an array of characters.
      item.split("").sort}
    new_array. each do |item|
      if item == @anagram.split("").sort
        result << @anagram
      else
        result
      end
    end

  end
end
