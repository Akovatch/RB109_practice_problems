# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find
# a substring that appears in both strings, or false if you do not.

# We only care about substrings that are longer than one letter long.

# input: two strings
# output: boolean
# rules:
  # substrings must be at least 2 chars long
# algorithm:
  # iterate through chars of string1 (each_with_index)
    # if that char if included in string2, then see if that char + next char (slice) is included in string 2
    # if it is, return true
  # if none are found, return false

def substring_test(string1, string2)
  string1 = string1.downcase
  string2 = string2.downcase
  string1.chars.each_with_index do |char, index|
    break if index == string1.length - 1 # only one char gets sliced at last index
    if string2.include?(char)
      return true if string2.include?(string1[index, 2])
    end
  end
  false
end

  p substring_test('Something', 'Fun') == false
  p substring_test('Something', 'Home') == true
  p substring_test('Something', '') == false
  p substring_test('', 'Something') == false
  p substring_test('BANANA', 'banana') == true
  p substring_test('test', 'lllt') == false
  p substring_test('', '') == false
  p substring_test('1234567', '541265') == true
  p substring_test('Something', 'Fun') == false



























#   def generate_substrings(str)
#     results = []
#     (0...str.length).each do |index1|
#       (index1...str.length).each do |index2|
#         results << str[index1..index2].downcase if str[index1..index2].length >= 2
#       end
#     end
#     results
#   end

#   def substring_test(str1, str2)
#     substrings1 = generate_substrings(str1)
#     substrings2 = generate_substrings(str2)
#     substrings1.each do |substring|
#       return true if substrings2.include?(substring)
#     end
#     false
#   end


# # LS solution: didn't generate substrings - instead compared characters of strings and if a common one was
# # found, it checked the next character, capitalizing on the fact that a common substring will have at least
# # characters.

# def substring_test(str1, str2)
#   str1_chars = str1.downcase.chars
#   str2_chars = str2.downcase.chars
#   str1_chars.each_with_index do |char1, idx1|
#     str2_chars.each_with_index do |char2, idx2|
#       return true if char1 == char2 && str1_chars[idx + 1] == str2_chars[idx2 + 1] && idx1 != (str_chars.size - 1)
#     end
#   end
#   false
# end