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

def anagram_difference(word1, word2)
  total_chars = word1.length + word2.length
  common_chars = 0
  word1.chars.each do |char|
    if word2.include?(char)
      common_chars += 1
      word2.sub!(char, '')
    else
      word2.sub!(char, '')
    end
  end
  total_chars - common_chars * 2
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


# Alt solution:

# def anagram_difference(word1, word2)
#   ref = word2.dup
#   same_chars = 0
#     word1.chars.each do |char|
#     if ref.include?(char)
#       ref.sub!(char, '-')
#       same_chars +=1
#     else
#       ref.sub!(char, '-')
#     end
#   end
#   word1.size + word2.size - (same_chars * 2)
# end

