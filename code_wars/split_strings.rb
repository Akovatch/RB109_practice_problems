=begin

6 kyu

Complete the solution so that it splits the string into pairs of two characters.
If the string contains an odd number of characters then it should replace the
missing second character of the final pair with an underscore ('_').

=end

def solution(string)
  string.chars.each_slice(2).map do |slice|
    slice.size < 2 ? slice.first + '_' : slice.join
  end
end

  p solution('abc') == ['ab', 'c_']
  p solution('abcdef') == ['ab', 'cd', 'ef']
  p solution("abcdef") == ["ab", "cd", "ef"]
  p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
  p solution("") == []
