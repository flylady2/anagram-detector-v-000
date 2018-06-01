class Anagram
  attr_accessor :word

  def initialize(anagram)
    @anagram = anagram
  end

  def match(array) #need to iterated over anagrams to see if any of the elements are composed of the same letters as word
    result = [] #an empty array to store the results
    new_array = array.collect {|item| # iterating over anagrams and splitting each word into an array of characters.
      item.split("").sort} #then sorting them alphabetically and storing them in a new array
    new_array.each_with_index{|item, index| #iterating over the new array
      if item == @anagram.split("").sort #looking for a match with the split, sorted anagram
        result << array[index] #if there is a match, storing the original word from the original array in the result array
      end}
      result #returning the result array


  end
end
