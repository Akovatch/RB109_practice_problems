# 6 kyu

# In this kata you are required to, given a string,
# replace every letter with its position in the alphabet.

# If anything in the text isn't a letter, ignore it and don't return it.

# "a" = 1, "b" = 2, etc.

def alphabet_position(string)
  results = []
  string.downcase.chars.each do |char|
    results << (char.ord - 96) if char =~ /[a-z]/
  end
  results.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"

# alt solution using an alphabet array

# def alphabet_position(text)
#   alphabet = %w(0 a b c d e f g h i j k l m n o p q r s t u v w x y z)
#   results = []
#   text.downcase.chars.each do |char|
#     results << alphabet.index(char).to_s if char =~ /[a-z]/
#   end
#   results.join(' ')
# end

