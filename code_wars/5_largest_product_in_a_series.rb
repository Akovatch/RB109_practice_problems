# 5 kyu

# Complete the greatestProduct method so that it'll find the greatest product of
# five consecutive digits in the given string of digits.

# For example:

# greatestProduct("123834539327238239583") // should return 3240

# The input string always has more than five digits.

def greatest_product(string)
  results = []
  max = 0
  0.upto(string.length - 5) do |index|
    results << string[index, 5]
  end
  results.each do |slice|
    num_array = slice.chars.map { |char| char.to_i }
    max = num_array.reduce(:*) if num_array.reduce(:*) > max
  end
  max
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0