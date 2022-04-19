# 5 kyu

# Write a function that calculates the least common multiple of its arguments; each argument
# is assumed to be a non-negative integer. In the case that there are no arguments (or the
# provided array in compiled languages is empty), return 1. The least common multiple is the lowest
# number that is evenly divisible by all arguments.

def lcm(arr)
  return 0 if arr.include?(0)
  return 1 if arr.empty?
  return arr.first if arr.size == 1
  if arr.size >= 2
    arr.sort!
    max_mult = arr[-1] * arr[-2]
    (arr.last).upto(max_mult) do |num|
      return num if arr.all? { |element| num % element == 0 }
    end
  end
end

p lcm([2, 5]) == 10
p lcm([2, 3, 4]) == 12
p lcm([9]) == 9
p lcm([0])== 0
p lcm([0, 1]) == 0