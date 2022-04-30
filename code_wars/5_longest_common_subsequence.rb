# 5 kyu - passed but very complicated. Key is to sub chars from reference string.

# Write a function called LCS that accepts two sequences and returns the
# longest subsequence common to the passed in sequences.

# Subsequence
# A subsequence is different from a substring. The terms of a subsequence
# need not be consecutive terms of the original sequence.

# Example subsequence
# Subsequences of "abc" = "a", "b", "c", "ab", "ac", "bc" and "abc".

# LCS examples
# lcs( "abcdef" , "abc" ) => returns "abc"
# lcs( "abcdef" , "acf" ) => returns "acf"
# lcs( "132535365" , "123456789" ) => returns "12356"
# Notes
# Both arguments will be strings
# Return value must be a string
# Return an empty string if there exists no common subsequence
# Both arguments will have one or more characters (in JavaScript)
# All tests will only have a single longest common subsequence.
# Don't worry about cases such as LCS( "1234", "3412" ), which would
# have two possible longest common subsequences: "12" and "34".
# Note that the Haskell variant will use randomized testing, but any
# longest common subsequence will be valid.

def lcs(string1, string2)
  results = []
  string2.chars.each do |char|
    previous_index = 0
    next if !string1.include?(char)

    loop do
      break if !string1.include?(char)
      index = string1.index(char)
      if results.empty? || index > previous_index
        results << char
        string1.sub!(char, ' ') # without this line code fails tests where input has duplicates
        previous_index = index
        break
      elsif index <= string1.index(results.last)
        string1.sub!(char, ' ')
      end
    end

  end
  results.join
end

p lcs( "abcdef" , "abc" ) == "abc"
p lcs( "abcdef" , "acf" ) == "acf"
p lcs( "132535365" , "123456789" ) == "12356"