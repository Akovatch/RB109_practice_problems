# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# using #min_by:

def least_common_char(string)
  string.downcase.chars.min_by { |char| string.downcase.count(char) }
end

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# using a variable:

def least_common_char(string)
  string = string.downcase
  least_occurring = string[0].downcase
  string.chars.each do |char|
    least_occurring = char if string.count(char) < string.count(least_occurring)
  end
  least_occurring
end

# using a hash

def least_common_char(string)
  results = {}
  string.downcase.chars do |char|
    count = string.downcase.count(char)
    results.key?(count) ? results[count] << char : results[count] = [char]
  end
  results.min[1][0]
end
