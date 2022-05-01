# 5 kyu - very difficult

# Consider the following expansion:

# solve("3(ab)") = "ababab"     -- because "ab" repeats 3 times
# solve("2(a3(b))") = "abbbabbb" -- because "a3(b)" == "abbb", which repeats twice.
# Given a string, return the expansion of that string.

# Input will consist of only lowercase letters and numbers (1 to 9) in valid parenthesis.
# There will be no letters or numbers after the last closing parenthesis.

# More examples in test cases.

# Good luck!

# input: string
# output: string
# rules:
  # Input will consist of only lowercase letters and numbers (1 to 9) in valid parenthesis.
  # There will be no letters or numbers after the last closing parenthesis.

# algorithm:
# init two arrays, letters and multipliers
# if ruby encoutners a letter, it pushes it into letter array and number (1 usually) into multipliers array
  # number is reassigned to 1
# if ruby encoutners a number, multiplier reassigned to number
# reverse arrays
# iterate from 0..index - 2 (if you iterate to last index it will throw an error)
  # multiply first letter element by first mult element
  # add the result to the to next letter element, then multiply by next multiplier
# multiply last element in letters by last element in numbers

def solve(string)
  letters = []
  numbers = []
  multiplier = 1
  string.gsub!('(', '')
  string.gsub!(')', '')
  string.chars.each do |element|
    if element =~ /[a-z]/ # if its a letter or combo of letters
      letters << element
      numbers << multiplier.to_i
      multiplier = 1
    else # if its a number
      multiplier = element
    end
  end
  letters.reverse!
  numbers.reverse!
  (0..letters.size - 2).each do |index|
    result = letters[index] * numbers[index]
    letters[index + 1] += result
  end
    letters[-1] * numbers[-1]
end

p solve( "3(ab)" ) == "ababab"
p solve( "2(a3(b))" ) == "abbbabbb"
p solve( "3(b(2(c)))" ) == "bccbccbcc"
p solve( "k(a3(b(a2(c))))" ) == "kabaccbaccbacc"
