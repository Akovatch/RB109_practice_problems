# Given a non-empty string, check if it can be constructed by taking a substring
# of it and appending multiple copies of the substring together. You may assume the
# given string consists of lowercase English letters only.

# input: string
# output: boolean
# rules:
  # input is non-empty
  # input is lowercase letters only
# algorithm:
  # iterate from 0...string.length - for each index #
    # get slice from string and multiply it by string length / slice length
      # compare this to string
      # if it is equal, return true
  # false if no matches were found

def repeated_substring_pattern(string)
  (1..string.length / 2).each do |slice_size|
    return true if string[0, slice_size] * (string.length / slice_size) == string
  end
  false
end

p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false
p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabcabc') == true
