# Given a non-empty string, check if it can be constructed by taking a substring
# of it and appending multiple copies of the substring together. You may assume the
# given string consists of lowercase English letters only.

def repeated_substring_pattern(str)
  sub_strings = []
  1.upto(str.length / 2) do |num|
    if (str.length % num == 0)
    sub_strings << str[0, num]
    end
  end
  sub_strings.each do |sub_string|
    multiplier = str.length / sub_string.length
    return true if sub_string * multiplier == str
  end
  false
end

p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false
p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabcabc') == true




