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

# input: array
# output: hash
# rules:
  # empty or nil input returns nil, not a hash
  # cannot use #count or #length
# alg:
  # init results hash
  # return nil if array is empty or input is nil
  # iterate over array
    # if the number does not exist as a key, key = element, value = 1
    # if the number exists as a key in the hash, increment the pair's value by one

def group_and_count(input)
  results = {}
  return nil if input == nil || input.empty?
  input.each do |num|
    results.key?(num) ? results[num] += 1 : results[num] = 1
  end
  results
end

p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
p group_and_count([]) == nil
p group_and_count(nil) == nil
p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}

# Codewars: using Hash.new(0) to initialize hash to values of 0

def group_and_count(input)
  return nil if input.nil? || input.empty?
  input.each_with_object(Hash.new(0)){ |k, h| h[k] += 1 }
end
