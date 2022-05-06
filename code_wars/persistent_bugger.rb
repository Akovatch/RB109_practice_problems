
# 6 kyu

# Write a function, persistence, that takes in a positive parameter num and returns its
# multiplicative persistence, which is the number of times you must multiply the digits
# in num until you reach a single digit.

# For example (Input --> Output):

# 39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
# 999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
# 4 --> 0 (because 4 is already a one-digit number)

# input: integer
# output: integer representing number of times we multiply the digits together
# rules:
  # input will be positive
  # return 0 if you don't multiply it
# algorithm:
  # init counter
  # start a loop
    # break if the number only has one digit
    # seperate and multiply digits
    # increment the counter
  # return counter

def persistence(num)
  counter = 0
  loop do
    break if num.to_s.length == 1
    num = num.digits.reduce(:*)
    counter += 1
  end
  counter
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
p persistence(444) == 3
