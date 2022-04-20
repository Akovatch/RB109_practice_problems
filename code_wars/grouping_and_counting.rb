=begin

6 kyu

Your goal is to write the group_and_count method, which should receive an array as
a unique parameter and return a hash. Empty or nil input must return nil instead
of a hash. This hash returned must contain as keys the unique values of the array,
and as values the counting of each value.

Example usage:

input = [1,1,2,2,2,3]

group_and_count(input)# == {1=>2, 2=>3, 3=>1}
The following methods were disabled:

Array#count
Array#length

=end

# input: array of integers
# output: a hash: unique nums are keys, counts as values
# rules:
  # Empty or nil input must return nil instead of a hash.
  # cannot use #count or #length
# alg:
  # handle nil and empty array input: return nil if...
  # iterate through array - each_with_object (Hash.new(0))
    # if object includes num as hash key, increment the value
    # if it does not, add num as key and increment value
    # return hash

def group_and_count(array)
  return nil if array.nil? || array.empty?
  array.each_with_object(Hash.new(0)) do |num, hash|
    hash[num] += 1
  end
end

p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
p group_and_count([]) == nil
p group_and_count(nil) == nil
p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}

