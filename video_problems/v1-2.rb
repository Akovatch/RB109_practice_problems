# Given an array of strings made only from lowercase letters, return an array of all characters
# that show up in all strings within the given array (including duplicates). For example,
# if a character occurs 3 times in all strings but not 4 times, you need to include that
# character 3 times in the final answer.

def common_chars(array)
  chars = array.pop.chars

  chars.select do |char|
    array.all? { |word| word.sub!(char, '') }
  end
end

p common_chars(['bella', 'label', 'roller']) # == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']