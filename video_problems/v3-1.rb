# The maximum sum subarray problem consists in finding the maximum sum
# of a contiguous subsequence in an array of integers.

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]
# Easy case is when the array is made up of only positive numbers and the
# maximum sum is the sum of the whole array. If the array is made up of
# only negative numbers, return 0 instead.

# Empty array is considered to have zero greatest sum. Note that the
# empty array is also a valid subarray.

# input: array of integers
# output: integer (max sum)
# rules:
  # If the array is made up of only negative numbers, return 0 instead.
  # Empty array is considered to have zero greatest sum. Note that the
  # empty array is also a valid subarray.
# algorithm:

  # generate all sub_arrays (helper method)
    # init results array
    # iterate from 0 - length of array -1 (index)
      # iterate from index - index[-1] (index2)
      #slice from index1 - index 2 and push into a results array

  # handle edge cases (all negative, empty array input)
  # feed array into helper method
  # find sub_array with the greatest sum
    # max by greatest sum
  # return the sum of the max element

def max_sequence(array)
  return 0 if array.empty? || array.all? { |num| num < 0 }
  return array.first if array.size == 1
  sub_arrays = generate_sub_arrays(array)
  sub_arrays.max_by { |arr| arr.sum }.sum
end

def generate_sub_arrays(array)
  results = []
  (0...array.size - 1).each do |index1|
    (index1...array.size).each do |index2|
      results << array[index1..index2]
    end
  end
  results
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12


# def max_sequence(arr)
#   return 0 if arr == []
#   sub_arrays = generate_sub_arrays(arr)
#   max = sub_arrays.max_by do |sub_arr|
#     sub_arr.sum
#   end
#   return 0 if max.sum < 0
#   max.sum
# end

# def generate_sub_arrays(arr)
#   results = []
#   (0...arr.size).each do |index1| # provides starting index for slice
#     (index1...arr.size).each do |index2| # provides ending index for slice
#       results << arr[index1..index2] # slice operation pushed into results
#     end
#   end
#   results
# end

# p max_sequence([]) == 0
# p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
# p max_sequence([11]) == 11
# p max_sequence([-32]) == 0
# p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12


