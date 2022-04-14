=begin

6 kyu

Complete the solution so that it splits the string into pairs of two characters.
If the string contains an odd number of characters then it should replace the
missing second character of the final pair with an underscore ('_').

=end

# input: string
# output: an array of 2-char strings
# rules: add _ to last char if it is a single char
# algorithm:
  # init results array
  # init coutner
  # loop
    # slice out two char substrings and push to results array
      # ex. string[counter..counter + 1]
    # counter += 2
  # if last string in results array has only one char, add _

def solution(string)
  return [] if string == ''
  results = []
  string.chars.each_slice(2) { |slice| results << slice.join }
  results[-1].length == 1 ? results[-1] << '_' : results
  results
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
