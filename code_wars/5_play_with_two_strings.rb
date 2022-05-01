# # 5 kyu - relatively easy

# Your task is to Combine two Strings. But consider the rule...

# By the way you don't have to check errors or incorrect input values, everything is ok
# without bad tricks, only two input strings and as result one output string;-)...

# And here's the rule:
# Input Strings a and b: For every character in string a swap the casing of every occurrence
# of the same character in string b. Then do the same casing swap with the inputs reversed.
#   Return a single string consisting of the changed version of a followed by the changed
#   version of b. A char of a is in b regardless if it's in upper or lower case - see the testcases too.
# I think that's all;-)...

# Some easy examples:

# Input: "abc" and "cde"      => Output: "abCCde"
# Input: "ab" and "aba"       => Output: "aBABA"
# Input: "abab" and "bababa"  => Output: "ABABbababa"

# Once again for the last example - description from KenKamau, see discourse;-):
# a) swap the case of characters in string b for every occurrence of that character in string a
# char 'a' occurs twice in string a, so we swap all 'a' in string b twice. This means we start
# with "bababa" then "bAbAbA" => "bababa"
# char 'b' occurs twice in string a and so string b moves as follows: start with
# "bababa" then "BaBaBa" => "bababa"

# b) then, swap the case of characters in string a for every occurrence in string b
# char 'a' occurs 3 times in string b. So string a swaps cases as follows: start with
# "abab" then => "AbAb" => "abab" => "AbAb"
# char 'b' occurs 3 times in string b. So string a swaps as follow: start with "AbAb"
# then => "ABAB" => "AbAb" => "ABAB".

# c) merge new strings a and b
# return "ABABbababa"

# There are some static tests at the beginning and many random tests if you submit your solution.

# input: two strings
# output: one string
# rules:
  # no bad inputs it says :)
# algorithm
  # helper method (will take string and letter as arguments)
    # iterate over chars of string (#map), switching case for any char that matches the letter argument (#swapcase)
  # main method:
    # iterate over chars of string2 - for each char
      # feed string1 and char into helper method (string1 = method call)
    # iterate over chars of string1 - for each char
      # feed string1 and char into helper method (string1 = method call)
    # join strings

def swapper(string, letter)
  string.chars.map { |char| char.downcase == letter.downcase ? char.swapcase : char }.join
end

def work_on_strings(string1, string2)
  string2.chars.each do |char|
    string1 = swapper(string1, char)
  end
  string1.chars.each do |char|
    string2 = swapper(string2, char)
  end
  string1 + string2
end

p work_on_strings("abc","cde") == "abCCde"
p work_on_strings("abcdeFgtrzw", "defgGgfhjkwqe") == "abcDeFGtrzWDEFGgGFhjkWqE"
p work_on_strings("abcdeFg", "defgG") == "abcDEfgDEFGg"
p work_on_strings("abab", "bababa") == "ABABbababa"
