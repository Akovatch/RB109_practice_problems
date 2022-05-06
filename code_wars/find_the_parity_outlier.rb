# 6 kyu

# You are given an array (which will have a length of at least 3,
# but could be very large) containing integers. The array is either
# entirely comprised of odd integers or entirely comprised of even integers
# except for a single integer N. Write a method that takes the array
# as an argument and returns this "outlier" N.

# Examples
# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)

# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)

# input: array of integers
# output: single integer
# rules:
  # array will have at least 3 elements
  # array will have an outlier
# algorithm:
  # partition array by odd numbers - parallel assign odd and even variables
  # return first element of smaller array

def find_outlier(array)
  odd, even = array.partition { |num| num.odd? }
  odd.size == 1 ? odd.first : even.first
end

p find_outlier([0, 1, 2]) == 1
p find_outlier([1, 2, 3]) == 2

























# def find_outlier(array)
#  even, odd = array.partition { |num| num.even? }
#  [even, odd].min_by { |array| array.size }.first
# end

