# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# input: array
# output: integer or nil
# rules:
  # if array has less than 5 elements, return nil
# algorithm:
  # init results array
  # handle if array has less than 5 elements - expression at the top of method
  # generate sub_arrays containing 5 consecutive elements each
    # loop from 0 up to array length - 5
      # push a slice (from index containing 5 elements) into a results array
  # convert each sub_array into its sum [12, 23]
  # return min

def minimum_sum(array)
  return nil if array.size < 5
  results = []
  0.upto(array.length - 5) do |index|
    results << array[index, 5]
  end
  results.map { |sub_array| sub_array.sum }.min
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10


