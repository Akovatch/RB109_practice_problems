# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

def closest_numbers(array)
  results = []
  array.each do |num1|
    array.each do |num2|
      results << [num1, num2] if num1 != num2
    end
  end
  results.min_by { |array| (array[0] - array[1]).abs }
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".