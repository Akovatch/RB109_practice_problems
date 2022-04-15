=begin

6 kyu

In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number.
Given n, take the sum of the digits of n. If that value has more
than one digit, continue reducing in this way until a single-digit
number is produced. This is only applicable to the natural numbers.

Here's how it works:

digital_root(16)
=> 1 + 6
=> 7

digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6

digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6

digital_root(493193)
=> 4 + 9 + 3 + 1 + 9 + 3
=> 29 ...
=> 2 + 9
=> 11 ...
=> 1 + 1
=> 2
=end

# input: integer
# output: integer
# rules: natural numbers only
# algorithm:
  # begin a loop
  # convert num to digits (#digits)
  # add digits together (variable sum)
  # check if sum has more than one digit
    # if so, return the sum


def digital_root(num)
  loop do
    num = num.digits.sum
    return num if num.digits.size == 1
  end
end

p digital_root(16) == 7
p digital_root(456) == 6
p digital_root(493193) == 2
p digital_root(132189) == 6
