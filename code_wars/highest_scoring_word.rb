=begin

6 kyu

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.
=end

# using two different methods:

def high(sentence)
  sentence.split.max_by { |word| score(word) }
end

def score(word)
  sum = 0
  word.chars.each do |char|
    sum += char.ord - 96
  end
  sum
end

# using one method and a hash to sort

def high(sentence)
  results = {}
  sentence.split.each do |word|
    sum = 0
    word.chars.each do |char|
      sum += char.ord - 96
    end
    results[word] = sum
  end
  results.max_by { |k, v| v }[0]
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
p high('b aa') == 'b'
p high('bb d') == 'bb'
p high('d bb') == 'd'
p high('aaa b') == 'aaa'