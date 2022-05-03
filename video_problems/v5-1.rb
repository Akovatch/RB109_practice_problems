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

# input: string (can be empty)
# output: integer - length of longest palindrome
# rules:
  # input can be empty - return 0
  # all inputs are lowercase apparently
  # single chars count as palindromes
# algorithm:
  # init results array
  # iterate from 0...string length (index1)
    # iterate from index1...string length (index2)
      # get slice
      # if slice is a palindrome, push to results
  # get max of results by size
  # return length of max

def longest_palindrome(string)
  results = []
  (0...string.length).each do |index1|
    (index1...string.length).each do |index2|
      results << string[index1..index2] if string[index1..index2] == string[index1..index2].reverse
    end
  end
  results.max_by { |palindrome| palindrome.length }.size
end

p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9

