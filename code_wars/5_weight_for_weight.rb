# 5 kyu - easy if you know about sort_by tie breaker feature

# Return this string of numbers sorted by the sum of their digits.

# Example:
# "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes:
# "100 180 90 56 65 74 68 86 99"

# When two numbers have the same sum, let us class them as if they
# were strings (alphabetical ordering) and not numbers:

# 180 is before 90 since, having the same "weight" (9), it comes before as a string.

# All numbers in the list are positive numbers and the list can be empty.

# Notes
# it may happen that the input string have leading, trailing whitespaces and
# more than a unique whitespace between two consecutive numbers

def order_weight(string)
  string.split.sort_by { |str_num| [str_num.chars.map(&:to_i).sum, str_num] }.join(' ')
end

p order_weight("56 65 74 100 99 68 86 180 90") == "100 180 90 56 65 74 68 86 99"
p order_weight("103 123 4444 99 2000") == "2000 103 123 4444 99"
p order_weight("2000 10003 1234000 44444444 9999 11 11 22 123") == "11 11 2000 10003 22 123 1234000 44444444 9999"


# def order_weight(string)
#   sorted = string.split(' ').sort_by do |str_num|
#     str_num.chars.map { |digit| digit.to_i }.sum
#   end
#   sorted.each_with_index do |str_num1, index1|
#     sorted.each_with_index do |str_num2, index2|
#       if str_num1.chars.map { |char| char.to_i }.sum == str_num2.chars.map { |char| char.to_i }.sum
#          sorted[index1], sorted[index2] = sorted[index2], sorted[index1] if (str_num1 <=> str_num2) == -1
#       end
#     endi
#   end.join(' ')
# end

# p order_weight("56 65 74 100 99 68 86 180 90") == "100 180 90 56 65 74 68 86 99"
# p order_weight("103 123 4444 99 2000") == "2000 103 123 4444 99"
# p order_weight("2000 10003 1234000 44444444 9999 11 11 22 123") == "11 11 2000 10003 22 123 1234000 44444444 9999"

