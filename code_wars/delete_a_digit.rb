# 6 kyu

# Given an integer n, find the maximal number you can obtain by deleting
# exactly one digit of the given number.

# Example
# For n = 152, the output should be 52;

# For n = 1001, the output should be 101.

# Constraints: 10 ≤ n ≤ 1000000.

# input: integer
# output: integer (with one digit removed)
# rules:
  # Constraints: 10 ≤ n ≤ 1000000
# alg:
  # convert integer to string, then to chars array
  # find the min and assign to variable
  # find the index number of min
  # delete element at that index number (#delete_at)
  # join chars into a string, convert to integer, and return


p delete_digit(152) == 52
p delete_digit(10010) == 101










# def delete_digit(n)
#   str = n.to_s
#   (0..str.length - 1).map do |index|
#     (str[0...index] + str[(index + 1)..-1]).to_i
#   end.max
# end

