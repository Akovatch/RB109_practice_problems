=begin

6 kyu

Given two words, how many letters do you have to remove from them to make them anagrams?

Example

First word : c od e w ar s (4 letters removed)

Second word : ha c k er r a nk (6 letters removed)

Result : 10

Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.
=end

# input: two strings
# output: an integer (how many letters were removed)
# rules:
  # all input will be lowercase
  # edge cases = can be empty strings
# alg:
  # init results array
  # get original total
    # get length of each word and add them together, assign to a variable original_size
  # figure out which letters do both words have in common
    # iterate through the chars word1
      # if present in word2,
        # push char into a results array
        # substitute letter in word1 with empty space
      # otherwise, substitute letter in word1 with empty space
  # multiply the number of elements in results by 2
  # subtract this from the total number of original_size

def anagram_difference(word1, word2)
  common_chars = []
  original_total = word1.size + word2.size
  word1.chars.each do |char|
    if word2.include?(char)
      common_chars << char
      word2.sub!(char, '')
    else
      word2.sub!(char, '')
    end
  end
  original_total - results.size * 2
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10


