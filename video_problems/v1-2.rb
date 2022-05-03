# Given an array of strings made only from lowercase letters, return an array of all characters
# that show up in all strings within the given array (including duplicates). For example,
# if a character occurs 3 times in all strings but not 4 times, you need to include that
# character 3 times in the final answer.

# input: an array of string words
# output: an array of common string chars
# rules:
  # all letters are lowercase
  # handle duplicates that are common
# algorithm:
  # initialize results array
  # first word is a reference word (shift)
  # iterate through chars of reference word - for each char
    # if char is present in all words of array, push char into results array
    # replace with an empty string in all words
  # return results array

def common_chars(array)
  results = []
  reference_word = array.shift
  reference_word.chars.each do |char|
    results << char if array.all? { |word| word.include?(char)}
    array.each { |word| word.sub!(char, '') }
  end
  results
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']

# LS solution: clever use of #sub! in an #all? block

# def common_chars(array)
#   chars = array.pop.chars

#   chars.select do |char|
#     array.all? { |word| word.sub!(char, '') } # <<- tricky
#   end
# end

