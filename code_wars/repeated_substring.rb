# 6 kyu

=begin

For a given nonempty string str find a minimum substring t and the maximum number k,
such that the entire string str is equal to t repeated k times.

The input string consists of lowercase latin letters.

Your function should return an array [t, k] (in Ruby and JavaScript)


Example #1:

s = "ababab";
the answer is ["ab", 3]

Example #2:

s = "abcde"
the answer is ["abcde", 1]
because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

=end

def f(string)
  multiplier = 0
  (0...string.length).each do |index|
    multiplier = string.length / string[0..index].length
    return [string[0..index], multiplier] if string[0..index] * multiplier == string
  end
end

  p f("ababab") == ["ab", 3]
  p f("abcde") == ["abcde", 1]
  p f("a") == ["a", 1]
