# The maximum sum subarray problem consists in finding the maximum sum
# of a contiguous subsequence in an array of integers.

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]
# Easy case is when the array is made up of only positive numbers and the
# maximum sum is the sum of the whole array. If the array is made up of
# only negative numbers, return 0 instead.

# Empty array is considered to have zero greatest sum. Note that the
# empty array is also a valid subarray.

def max_sequence(arr)
  return 0 if arr == []
  sub_arrays = generate_sub_arrays(arr)
  sub_arrays
  max = sub_arrays.max_by do |sub_arr|
    sub_arr.sum
  end
  return 0 if max.sum < 0
  max.sum
end

def generate_sub_arrays(arr)
  results = []
  (0...arr.size).each do |index1| # provides starting index for slice
    (index1...arr.size).each do |index2| # provides ending index for slice
      results << arr[index1..index2] # slice operation pushed into results
    end
  end
  results
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12


