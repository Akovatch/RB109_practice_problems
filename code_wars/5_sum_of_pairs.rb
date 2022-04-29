# 5 kyu

# Sum of Pairs - much harder than it looks bc need to consider index placement of pair.

# Given a list of integers and a single sum value, return the first two values
# (parse from the left please) in **order of appearance** that add up to form the sum.

# sum_pairs([11, 3, 7, 5],         10)
# #              ^--^      3 + 7 = 10
# == [3, 7]

# sum_pairs([4, 3, 2, 3, 4],         6)
# #          ^-----^         4 + 2 = 6, indices: 0, 2 *
# #             ^-----^      3 + 3 = 6, indices: 1, 3
# #                ^-----^   2 + 4 = 6, indices: 2, 4
# #  * entire pair is earlier, and therefore is the correct answer
# == [4, 2]

# sum_pairs([0, 0, -2, 3], 2)
# #  there are no pairs of values that can be added to produce 2.
# == None/nil/undefined (Based on the language)

# sum_pairs([10, 5, 2, 3, 7, 5],         10)
# #              ^-----------^   5 + 5 = 10, indices: 1, 5
# #                    ^--^      3 + 7 = 10, indices: 3, 4 *
# #  * entire pair is earlier, and therefore is the correct answer
# == [3, 7]
# Negative numbers and duplicate numbers can and will appear.

# NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements.
# Be sure your code doesn't time out.

def sum_pairs(array, sum)
  results = {}
  array.each_with_index do |num1, index1|
    array.each_with_index do |num2, index2|
      next if index1 == index2
      next if results.value?([num1, num2]) || results.value?([num2, num1])
      results[index2] = [num1, num2] if num1 + num2 == sum
    end
  end
  results.empty? ? nil : results.min[1]
end

p sum_pairs([11, 3, 7, 5], 10) == [3, 7]
p sum_pairs([4, 3, 2, 3, 4], 6) == [4, 2]
p sum_pairs([0, 0, -2, 3], 2) == nil
p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]





























# def sum_pairs(ints, s)
#   results = {}
#   ints.each_with_index do |value1, index1|
#     ints.each_with_index do |value2, index2|
#       if index1 < index2
#         results[index2] = [value1, value2] if value1 + value2 == s
#       end
#     end
#   end
#   results.empty? ? nil : results.sort_by { |k, v| k }[0][1]
# end

# # codewars solution:

# def sum_pairs(ints, sum)
#   seen = {}
#   ints.each do |integer|
#     return [sum - integer, integer] if seen.key?(sum - integer)
#     seen[integer] = true
#   end
#   nil
# end

# p sum_pairs([11, 3, 7, 5], 10)  == [3, 7]
# p sum_pairs([4, 3, 2, 3, 4], 6) == [4, 2]
# p sum_pairs([0, 0, -2, 3], 2) == nil
# p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]









