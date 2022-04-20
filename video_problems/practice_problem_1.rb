# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# using the count method with a block

def smaller_numbers_than_current(array)
  uniq_array = array.uniq
  array.map do |num|
    uniq_array.count { |ele| ele < num}
  end
end

# using a count variable to increment

def smaller_numbers_than_current(array)
  uniq_array = array.uniq
  array.map do |num|
    count = 0
    uniq_array.each { |ele| count += 1 if ele < num }
    count
  end
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

