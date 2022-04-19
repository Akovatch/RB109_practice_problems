# 6 kyu

# Given a string that includes alphanumeric characters ('3a4B2d') return
# the expansion of that string: The numeric values represent the occurrence
# of each letter preceding that numeric value. There should be no numeric
# characters in the final string. Empty strings should return an empty string.

# The first occurrence of a numeric value should be the number of times each
# character behind it is repeated, until the next numeric value appears.

# string_expansion('3D2a5d2f') == 'DDDaadddddff'
# string_expansion('3abc') == 'aaabbbccc'       # correct
# string_expansion('3abc') != 'aaabc'           # wrong
# string_expansion('3abc') != 'abcabcabc'       # wrong
# If there are two consecutive numeric characters the first one is ignored.

# string_expansion('3d332f2a') == 'dddffaa'
# If there are two consecutive alphabetic characters then the first character
# has no effect on the one after it.

# string_expansion('abcde') == 'abcde'
# Your code should be able to work for both lower and capital case letters.

# string_expansion('') == ''

  def string_expansion(s)
    results = []
    multiplier = 1
    s.chars.each do |char|
      if char =~ /[0-9]/
        multiplier = char.to_i
      else
        results << char * multiplier
      end
    end
    results.join
  end

p string_expansion('abcde') == 'abcde'
p string_expansion('3d332f2a') == 'dddffaa'
p string_expansion('abcde') == 'abcde'
p string_expansion('') == ''
