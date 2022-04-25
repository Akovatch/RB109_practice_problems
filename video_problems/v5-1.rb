# Find the length of the longest substring in the given string
# that is the same in reverse.

# As an example, if the input was 'I like racecars that go fast',
# the substring (racecar) length would be 7.

# If the length of the input is 0, return value must be 0.

# Example:
# 'a' => 1
# 'aab' => 2
# 'abcde' => 1
# 'zzbaabcd' => 4
# '' => 0

def longest_palindrome(string)
  palindromes = generate_palindromes(string)
  palindromes.max_by { |palindrome| palindrome.length }.length
end

def generate_palindromes(string)
  results = []
  (0...string.length).each do |index1|
    (index1...string.length).each do |index2|
      slice = string[index1..index2]
      results << slice if slice.reverse == slice
    end
  end
  results
end

p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9

