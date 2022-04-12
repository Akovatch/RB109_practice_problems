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

def longest_palindrome(str)
  palindromes = []
  substrings = generate_substrings(str)
  substrings.each do |substring|
    palindromes << substring if substring.reverse == substring
  end
  palindromes.max_by {|palindrome| palindrome.length }.length
end

def generate_substrings(str)
  results = []
  0.upto(str.length - 1) do |index1|
    index1.upto(str.length - 1) do |index2|
      results << str[index1..index2]
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

