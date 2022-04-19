# 7 kyu

# You might know some pretty large perfect squares. But what about the NEXT one?

# Complete the findNextSquare method that finds the next integral perfect square
# after the one passed as a parameter. Recall that an integral perfect square is
# an integer n such that sqrt(n) is also an integer.

# If the parameter is itself not a perfect square then -1 should be returned.
# You may assume the parameter is non-negative.

def find_next_square(sq)
  divisor = perfect_square(sq)
  return (divisor + 1) ** 2 if divisor
  -1
end

def perfect_square(sq)
  divisor = Integer.sqrt(sq)
  return divisor if divisor ** 2 == sq
end

p find_next_square(121) == 144
p find_next_square(625) == 676
p find_next_square(114) == -1 #since 114 is not a perfect square
