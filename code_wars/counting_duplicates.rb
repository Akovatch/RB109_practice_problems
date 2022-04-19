=begin

6 kyu

Count the number of Duplicates

Write a function that will return the count of distinct case-insensitive alphabetic
characters and numeric digits that occur more than once in the input string.
The input string can be assumed to contain only alphabets (both uppercase and lowercase)
and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once

"aabbcde" -> 2 # 'a' and 'b'

"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)

"indivisibility" -> 1 # 'i' occurs six times

"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice

"aA11" -> 2 # 'a' and '1'

"ABBA" -> 2 # 'A' and 'B' each occur twice

=end

# input: string
# output: integer representing the count of unique case-insensitive chars that occur more than once
# rules:
  # case-insensitive
  # string will only contain letter and digits
  # input can be an empty string
# alg:
  # !!!handling of empty string?
  # init results array
  # iterate over chars of downcased string
    # find the count of each char passed in
      # if the count is more than 1, push char into results array
  # get uniq version of results array
  # return size of results array

def duplicate_count(string)
  results = []
  string = string.downcase
  string.chars.each { |char| results << char if string.count(char) > 1 }
  results.uniq.size
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2

# Codewars:

# def duplicate_count(text)
#   ('a'..'z').count { |c| text.downcase.count(c) > 1 }
# end