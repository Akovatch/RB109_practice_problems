# 5 kyu

# Write a function that calculates the least common multiple of its arguments; each argument
# is assumed to be a non-negative integer. In the case that there are no arguments (or the
# provided array in compiled languages is empty), return 1. The least common multiple is the lowest
# number that is evenly divisible by all arguments.

def lcm(array)
  return 1 if array.empty?
  return 0 if array.include?(0)
  array.first.upto(array.reduce(:*)) do |num|
    return num if array.all? { |ele| num % ele == 0 }
  end
end

p lcm([2, 5]) == 10
p lcm([2, 3, 4]) == 12
p lcm([9]) == 9
p lcm([0])== 0
p lcm([0, 1]) == 0