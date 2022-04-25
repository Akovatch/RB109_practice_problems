# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# input: array of integers
# output: an array of two integers
# rules: ?
# algorithm: generate all possibilities, push into results array, and then select min by the difference
  # init results array
  # generate all possibilities
    # iterate over array - num1
      # iterate over the array again - num2
        # results will recieve [num1, num2]
  # itearet over results to get the min by subtracting second num from first num and calling abs val on it
  # return the min

def closest_numbers(array)
  results = []
  array.each do |num1|
    array.each do |num2|
      results << [num1, num2] if num1 != num2
    end
  end
  results.min_by { |sub_array| (sub_array[0] - sub_array[1]).abs }
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
