# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of
# 3 or 5 below the number passed in. Additionally,

# Note: If the number is a multiple of both 3 and 5, only count it once.

def solution(number)
  (1...number).select do |num|
    num % 3 == 0 || num % 5 == 0
  end.sum
end

p solution(10) == 23