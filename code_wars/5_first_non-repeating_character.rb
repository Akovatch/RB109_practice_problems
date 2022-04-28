# 5 kyu

# Write a function named first_non_repeating_letter that takes a string input,
# and returns the first character that is not repeated anywhere in the string.

# For example, if given the input 'stress', the function should return 't',
# since the letter t only occurs once in the string, and occurs first in the string.

# As an added challenge, upper- and lowercase letters are considered the same
# character, but the function should return the correct case for the initial
# letter. For example, the input 'sTreSS' should return 'T'.

# If a string contains all repeating characters, it should return an empty
#  string ("") or None -- see sample tests.

# input: string
# output: char
# rules:
  # should return first letter that doesn't repeat
  # return correct case of initial letter if lower- and upper- case versions appear (considered the same)
  # If a string contains all repeating characters, it should return an empty string ("")

# algorithm:
  # iterate over chars of string - for each char
    # get count of that char (lowercase) in string
    # if count is 1, return char
    # ''

def first_non_repeating_letter(string)
  string.chars.each do |char|
    return char if string.downcase.count(char.downcase) == 1
  end
  ''
end

p first_non_repeating_letter('a') == 'a'
p first_non_repeating_letter('stress') == 't'
p first_non_repeating_letter('sTreSS') == 'T'
p first_non_repeating_letter('moonmen') == 'e'
p first_non_repeating_letter('') == ''
