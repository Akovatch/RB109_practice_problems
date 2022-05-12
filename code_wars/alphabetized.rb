# 6 kyu

# Re-order the characters of a string, so that they are concatenated into a
# new string in "case-insensitively-alphabetical-order-of-appearance" order.
# Whitespace and punctuation shall simply be removed!

# The input is restricted to contain no numerals and only words containing
# the english alphabet letters.

# Example:
# alphabetized("The Holy Bible") # "BbeehHilloTy"

ALPHA = ('a'..'z').to_a

def alphabetized(string)
  results = []
  ALPHA.each do |letter|
    string.chars.each do |char|
     results << char if char.downcase == letter
    end
  end
  results.join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"

# using sort_by tie breaker

def alphabetized(string)
  string.chars.sort_by { |char| [ char.downcase.ord, string.index(char)] }.join.delete(' ')
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"