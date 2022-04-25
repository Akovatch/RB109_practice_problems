# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# input: array of integers
# output: integer representing the minimum sum of 5 consecutive integers
# rules:
  # If the array contains fewer than 5 elements, the method should return nil.
# algorithm:
  # init results array
  # If the array contains fewer than 5 elements, the method should return nil.
  # interate from 0 upto array size - 5 (index)
    # slice from index up 5 elements, push subarray into results array
  # select the min subarray by sum, return the sum

def minimum_sum(array)
  results = []
  return nil if array.size < 5
  0.upto(array.size - 5) do |index|
    results << array[index, 5]
  end
  results.min_by { |sub_array| sub_array.sum }.sum
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
