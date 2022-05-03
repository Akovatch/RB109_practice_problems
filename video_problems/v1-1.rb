# Given a non-empty string, check if it can be constructed by taking a substring
# of it and appending multiple copies of the substring together. You may assume the
# given string consists of lowercase English letters only.

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
