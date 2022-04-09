# You have to create a method that takes a positive integer number
# and returns the next biggest number formed by the same digits

# 12 => 21
# 513 => 531
# 2017 => 2071

# If no bigger number can be composed using those
# digits return -1

# 9 => -1
# 111 => -1
# 531 => -1

def next_bigger_num(num)
  num = num.to_s.chars
  2.upto(num.size) do |n|
    if num[-n] < num[-1]
       num[-n..-1] = rotate_array(num[-n..-1])
       return num.join.to_i
    end
  end
  -1
end

def rotate_array(arr)
  rotated_array = arr[1..-1]
  rotated_array << arr[0]
  rotated_array
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798


# LS student solution:

def next_bigger_num(input)
  max = max_num(input)
  ((input + 1)..max).to_a.each do |num|
    return num if max == max_num(num) # if parameter has the same max_num as input
                                      # then it matches
  end
  -1
end

def max_num(input) # gives sorted max num
  input.to_s.chars.sort.reverse.join.to_i
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798