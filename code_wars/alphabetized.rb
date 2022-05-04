# 6 kyu 

# Re-order the characters of a string, so that they are concatenated into a
# new string in "case-insensitively-alphabetical-order-of-appearance" order.
# Whitespace and punctuation shall simply be removed!

# The input is restricted to contain no numerals and only words containing
# the english alphabet letters.

# Example:
# alphabetized("The Holy Bible") # "BbeehHilloTy"

# input: string
# output: new string in "case-insensitively-alphabetical-order-of-appearance" order
# rules:
  # white space and punctuation are removed
  # input is only letters and punctuation - no digits
# algorithm:
  # remove punctuation and whitespace
    # push into results if it matches regex
  # sort by value lowercase, tie breaker is index within the original string

def alphabetized(string)
  only_letters = []
  string.chars.each { |char| only_letters << char if char =~ /[a-zA-Z]/ }
  only_letters.sort_by { |char| [char.downcase, string.index(char)] }.join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"

# alt solution:

# ALPHABET = ('a'..'z').to_a

# def alphabetized(string)
#   results = []
#   ALPHABET.each do |letter|
#     string.chars.each { |char| results << char if char.downcase == letter }
#   end
#   results.join
# end

# p alphabetized("The Holy Bible") == "BbeehHilloTy"

# because we iterate over the alphabet, all chars will be sorted alphabetically
# by order of appearance in the string.























# ALPHA = ('a'..'z').to_a

# def alphabetized(s)
#   results = []
#   ALPHA.each do |alpha|
#     s.chars.each do |char|
#     results << char if alpha == char.downcase
#     end
#   end
#   results.join
# end

# p alphabetized("The Holy Bible") == "BbeehHilloTy"
