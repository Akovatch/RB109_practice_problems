=begin

6 kyu

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.
=end

# input: sentence string
# output: the highest scoring word
# rules:
  # all inputs will be valid
  # only lowercase letters
  # ***if two words score the same, return that which comes earlier in the string
# alg:
   # max the scores (calling the helper method on each word)
     # split sentence into words, call helper on each word

   # helper method: get score for each word
    # iterate through each char of each word (#map)
      # add (# 'a'.ord - 96) to sum
      # return the sum on the last line

def get_score(word)
  sum = 0
  word.chars.each { |char| sum += (char.ord - 96) }
  sum
end

def high(sentence)
  sentence.split.max_by { |word| get_score(word) }
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
p high('b aa') == 'b'
p high('bb d') == 'bb'
p high('d bb') == 'd'
p high('aaa b') == 'aaa'
