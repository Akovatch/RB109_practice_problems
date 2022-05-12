# 5 kyu

# Move the first letter of each word to the end of it, then add "ay" to the end of the word.
# Leave punctuation marks untouched.

# input: string
# output: string in pig latin
# rules:
  # assuming no empty or invalid inputs
# algorithm:
  # create a constant array of punctutaion marks
  # iterate over words - transform each word
  # if its a punc mark, return punc mark
  # add first char to end of word from 1..-1 + ay

PUNCTUATION = ['.', '?', '!']

def pig_it(string)
  string.split.map { |word| PUNCTUATION.include?(word) ? word : word[1..-1] + word[0] + 'ay' }.join(' ')
end

p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('Hello world !') == 'elloHay orldway !'

