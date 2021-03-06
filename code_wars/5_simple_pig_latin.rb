# 5 kyu

# Move the first letter of each word to the end of it, then add "ay" to the end of the word.
# Leave punctuation marks untouched.

PUNCTUATION = ['.', '?', '!']

def pig_it(string)
  string.split.map { |word| PUNCTUATION.include?(word) ? word : word[1..-1] + word[0] + 'ay' }.join(' ')
end

p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('Hello world !') == 'elloHay orldway !'

