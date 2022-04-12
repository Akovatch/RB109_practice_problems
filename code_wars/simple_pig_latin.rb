# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !

def pig_it(text)
  words = text.split
  words.map do |word|
    new_word = word[1..-1] + word[0]
    if word[-1] =~ /[a-zA-Z]/
      new_word + 'ay'
    else
      word
    end
  end.join(' ')
end

p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('Hello world !') == 'elloHay orldway !'

# Codewars solution:

def pig_it text
  text.split(" ").map{ |word|["?", "!", "."].include?(word) ? word : word[1..-1] + word[0] + "ay" }.join(" ")
end