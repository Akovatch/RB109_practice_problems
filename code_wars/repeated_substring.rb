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

# input: string
# output: an array containing a substring and an integer
# rules: non-empty
# algorithm:
  # initialize a results hash
  # generate all substrings
    # nested upto iterations
    # generate all substrings
    # iterate over substrings
      # if substring can be multiplied to create string, push substring (key) into a results hash along with the multiplier (value)
        # substring * number from 1 to string length / 2
  # select the pair with the smallest key by character length

def f(str)
  substrings = []
  results = {}
  0.upto(str.length) do |index|
    substrings << str[0..index]
  end
  substrings.each do |substring|
    (1..str.length).each do |multiplier|
    return [substring, multiplier] if substring * multiplier == str
    end
  end
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
p f("a") == ["a", 1]
