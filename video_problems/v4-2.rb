# Write function scramble(str1, str2) that returns true if a
# portion of str1 characters can be rearranged to match str2,
# otherwise returns false.

# For example:
# str1 is 'rkgodlw' and str2 is 'world' the output should return true
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true
# str1 is 'katas' and str2 is 'steak' should return false.

# Only lower case letters will be used (a-z). No punctuation or digits will
# be included.

def scramble(str1, str2)
  str2.chars.all? do |char|
   p str1.sub!(char, '') if str1.include?(char)
  end
end

p scramble('javaass','jjss') == false
p scramble('rkgodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true

# LS solution - similar, but instead of sub! it uses count...

def scramble(str1, str2)
  str1_chars = str1.chars
  str2_chars = str2.chars
  str2_chars.each do |char2|
    return false if str2.count(char2) > str1.count(char2)
  end
  true
end