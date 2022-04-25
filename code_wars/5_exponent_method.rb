=begin

5 kyu

Create a method called "power" that takes two integers and returns the value of the first
argument raised to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.


# input: two integers
# output: one integer
# rules:
  # Return nil if the second argument is negative.
  # The ** operator is disabled.


Examples:

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil

# algorithm:
  # if num2 if zero, then return 1
  # return nil if the num2 is negative
  # start a loop, from 1 upto the power minus 1
    # multiply a num1 by num1
    # ? handling negatives correctly? (-5, 3)
=end

def power(base, exp)
  return nil if exp < 0
  result = 1
  exp.times do
    result *= base
  end
  result
end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil
