# Write a method to find the longest common prefix string amongst
# an array of strings.

# It there is no common prefix, return an empty string.

# Example 1:

# ['flower', 'flow', 'flight'] => 'fl'

# Example 2:

# ['dog', 'racecar', 'car'] => ''

# All given inputs are lowercase letters a-z.


# input: an array of strings
# output: string or empty string
# rules:
  # It there is no common prefix, return an empty string.
  # All given inputs are lowercase letters a-z.
# algorithm:
  # init variable: last_index = ''
  # iterate through chars of the first word of array (each_with_index)
    # check if all words have the same character at the index (all?)
      # if not, break
    # last_index reassigned to index each time
    # slice first word from 0..last_index

def common_prefix(array)
  last_index = ''
  array.first.chars.each_with_index do |char, index|
    break if !array.all? { |word| word[index] == char }
      last_index = index
  end
  last_index == '' ? '' : array.first[0..last_index]
end

  p common_prefix(['flower', 'flow', 'flight']) == 'fl'
  p common_prefix(['dog', 'racecar', 'car']) == ''
  p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
  p common_prefix(['throne', 'dungeon']) == ''
  p common_prefix(['throve', 'throne']) == 'thro'

# def common_prefix(array)
#   results = []
#   reference_word = array.shift.chars
#   reference_word.each_with_index do |char, index|
#     if array.all? { |word| word[index] == char }
#        results << char
#     else return results.join
#     end
#   end
#   results.join
# end


