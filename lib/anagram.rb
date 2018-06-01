class Anagram
  attr_accessor :word

  def initialize(anagram)
    @anagram = anagram
  end

  def match(array)
    result = [] #need to iterated over anagrams to see if any of the elements are composed of the same letters as word
    if array.each {|item| # iterating over anagrams and splitting each word into an array of characters.
      item.split("").sort == @anagram.split("").sort
      result << item}
    end
      result
    end


  end
end
