# Re-order the characters of a string, so that they are concatenated into a
# new string in "case-insensitively-alphabetical-order-of-appearance" order.
# Whitespace and punctuation shall simply be removed!

# The input is restricted to contain no numerals and only words containing
# the english alphabet letters.

# Example:
# alphabetized("The Holy Bible") # "BbeehHilloTy"

# input: string
# output: string
# rules:
  # case-insensitive
  # only letters
  # order of appearance
  # remove whitespace and punctuation
# algorithm:
  # compare letters to regex
    # initialize results array
    # split string into chars array
    # iterate over chars (#each)
      # compare each char against regex
      # push into results array if matches
    # join results

ALPHA = ('a'..'z').to_a

def alphabetized(s)
  results = []
  ALPHA.each do |alpha|
    s.chars.each do |char|
    results << char if alpha == char.downcase
    end
  end
  results.join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
