# Write a method to find the longest common prefix string amongst
# an array of strings.

# It there is no common prefix, return an empty string.

# Example 1:

# ['flower', 'flow', 'flight'] => 'fl'

# Example 2:

# ['dog', 'racecar', 'car'] => ''

# All given inputs are lowercase letters a-z.

def common_prefix(array)
  results = []
  reference_word = array.shift
  reference_word.chars.each_with_index do |char, index|
    array.all? { |word| word[index] == char } ? results << char : break
  end
  results.empty? ? '' : results.join
end

  p common_prefix(['flower', 'flow', 'flight']) == 'fl'
  p common_prefix(['dog', 'racecar', 'car']) == ''
  p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
  p common_prefix(['throne', 'dungeon']) == ''
  p common_prefix(['throve', 'throne']) == 'thro'
