# You are going to be given an array of integers. Your job is to take
# that array and find an index N where the sum of the integers to the left
# of N is equal to the sum of the integers to the right of N. If there
# is no index that would make this happen, return -1.

# For example:

# Lets say you are given the array [1, 2, 3, 4, 3, 2, 1]:
# Your method will return the index 3, because at the 3rd position of
# the array, the sum on the left side of the index [1, 2, 3] and the sum
# of the right side of the index [3, 2, 1] both equal 6.

# Another one:

# You are given the array [20, 10, -80, 10, 10, 15, 35]
# At index 0 the left side is [].
# The right side is [10, 80, 10, 10, 15, 35]
# They both are equal to 0 when added. (Empty arrays are equal to 0
# in this problem). Index - is the place where the left side and right
# side are equal.

def find_even_index(array)
  return 0 if array.empty?
  array.each_with_index do |num, index|
    return index if array[0..index].sum == array[index..-1].sum
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
p find_even_index([]) == 0
