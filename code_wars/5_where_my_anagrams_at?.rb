# 5 kyu - very easy for a level 5 kyu

# What is an anagram? Well, two words are anagrams of each other if they
# both contain the same letters. For example:

# 'abba' & 'baab' == true

# 'abba' & 'bbaa' == true

# 'abba' & 'abbba' == false

# 'abba' & 'abca' == false

# Write a function that will find all the anagrams of a word within an array.
# You will be given two inputs: a word and an array with words. You should
# return an array of all the anagrams or an empty array if there are none.

# For example:

# anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

# anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

# anagrams('laser', ['lazing', 'lazy',  'lacer']) => []

def anagrams(reference_word, words_array)
  words_array.select do |word|
    word.chars.sort == reference_word.chars.sort
  end
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []
