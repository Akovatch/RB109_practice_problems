# You have to create a method that takes a positive integer number
# and returns the next biggest number formed by the same digits

# 12 => 21
# 513 => 531
# 2017 => 2071
# 52431 => 53124

# If no bigger number can be composed using those
# digits return -1

# 9 => -1
# 111 => -1
# 531 => -1

# input: integer
# output: integer (next biggest num)
# rules:
  # use same digits as og num
  # return -1 if there is no bigger num
# Algorithm:
  # loop up from current num until you hit another one with the same digits
    # convert num to digits, assign to digits variable
    # loop
      # increment up from num until you find another number with the same digits (#digits)
      # break if num is so large it has a new place added
        # num.digits.size > digits.size

def next_bigger_num(num)
  digits = num.digits.sort
  next_bigger = num
  loop do
    next_bigger += 1
    return next_bigger if next_bigger.digits.sort == digits
    return -1 if next_bigger.digits.size > digits.size
  end
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798

# # LS student solution:

# def next_bigger_num(input)
#   max = max_num(input)
#   ((input + 1)..max).to_a.each do |num|
#     return num if max == max_num(num) # if parameter has the same max_num as input
#                                       # then it matches
#   end
#   -1
# end

# def max_num(input) # gives sorted max num
#   input.to_s.chars.sort.reverse.join.to_i
# end

# p next_bigger_num(9) == -1
# p next_bigger_num(12) == 21
# p next_bigger_num(513) == 531
# p next_bigger_num(2017) == 2071
# p next_bigger_num(111) == -1
# p next_bigger_num(531) == -1
# p next_bigger_num(123456789) == 123456798