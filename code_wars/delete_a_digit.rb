# 6 kyu

# Given an integer n, find the maximal number you can obtain by deleting
# exactly one digit of the given number.

# Example
# For n = 152, the output should be 52;

# For n = 1001, the output should be 101.

# Constraints: 10 ≤ n ≤ 1000000.

def delete_digit(n)
  results = []
  str = n.to_s
  (0..str.length - 1).map do |index|
    (str[0...index] + str[(index + 1)..-1]).to_i
  end.max
end

p delete_digit(152) == 52
p delete_digit(1001) == 101
