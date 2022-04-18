=begin

6 kyu

Write a function with the signature shown below:

returns true / True if every element in an array is an integer or a float with no decimals.

returns true / True if array is empty.

returns false / False for every other input. (Check test cases to see the variety of inputs and edge cases)

=end

def is_int_array(arr)
  return false if !arr.is_a?(Array)
  arr.all? do |num|
  num.to_f.to_i == num || num.to_i.to_f == num
  end
end

p is_int_array([]) == true
p is_int_array([1, 2, 3, 4]) == true
p is_int_array([-11, -12, -13, -14]) == true
p is_int_array([1.0, 2.0, 3.0]) == true
p is_int_array([1, 2, nil]) == false
p is_int_array(nil) == false
p is_int_array("") == false
p is_int_array([nil]) == false

