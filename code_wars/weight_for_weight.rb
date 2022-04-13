# My friend John and I are members of the "Fat to Fit Club (FFC)".
# John is worried because each month a list with the weights of
# members is published and each month he is the last on the list
# which means he is the heaviest.

# I am the one who establishes the list so I told him:
# "Don't worry any more, I will modify the order of the list".
# It was decided to attribute a "weight" to numbers. The weight of a number
# will be from now on the sum of its digits.

# For example 99 will have "weight" 18, 100 will have "weight" 1 so in
# the list 100 will come before 99.

# Given a string with the weights of FFC members in normal order can you
# give this string ordered by "weights" of these numbers?

# Example:
# "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes:
# "100 180 90 56 65 74 68 86 99"

# When two numbers have the same "weight", let us class them as if they
# were strings (alphabetical ordering) and not numbers:

# 180 is before 90 since, having the same "weight" (9), it comes before as a string.

# All numbers in the list are positive numbers and the list can be empty.

# Notes
# it may happen that the input string have leading, trailing whitespaces and
# more than a unique whitespace between two consecutive numbers

def order_weight(string)
  sorted = string.split(' ').sort_by do |str_num|
    str_num.chars.map { |digit| digit.to_i }.sum
  end
  sorted.each_with_index do |str_num1, index1|
    sorted.each_with_index do |str_num2, index2|
      if str_num1.chars.map { |char| char.to_i }.sum == str_num2.chars.map { |char| char.to_i }.sum
         sorted[index1], sorted[index2] = sorted[index2], sorted[index1] if (str_num1 <=> str_num2) == -1
      end
    end
  end.join(' ')
end

p order_weight("56 65 74 100 99 68 86 180 90") == "100 180 90 56 65 74 68 86 99"
p order_weight("103 123 4444 99 2000") == "2000 103 123 4444 99"
p order_weight("2000 10003 1234000 44444444 9999 11 11 22 123") == "11 11 2000 10003 22 123 1234000 44444444 9999"

# Codewars solution: the , n] at the end of the block is a 'tie-breaker' expression. If two values are the same it provides
# #sort_by a way to break the tie.

def order_weight(string)
  string.split.sort_by { |n| [n.chars.map(&:to_i).reduce(:+), n] }.join(" ")
end