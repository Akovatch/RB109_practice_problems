=begin

6 kyu

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

=end

# input: string sentence
# output: word with the highest score
# rules:
  # If two words score the same, return the word that appears earliest in the original string.
  # All letters will be lowercase
  # all inputs will be valid.

# algorithm:
  # init highest variable
  # iterate through words of the sentence - for each word
    # init variable score
    # get its score
      # iterate over chars of word - for each char
        # add char's ascii placement # - 96 to score variable
    # if word's score is higher than score of word in variable, then varaible reassigned to word
  # return variable

def high(string)
  highest = string.split.first
  string.split.each do |word|
    score = word.chars.map { |char| char.ord - 96 }.sum
    highest = word if score > highest.chars.map { |char| char.ord - 96 }.sum
  end
  highest
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
p high('b aa') == 'b'
p high('bb d') == 'bb'
p high('d bb') == 'd'
p high('aaa b') == 'aaa'
