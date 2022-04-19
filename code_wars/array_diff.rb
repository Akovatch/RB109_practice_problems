=begin

6 kyu (very easy for a 6 kyu)

Your goal in this kata is to implement a difference function,
which subtracts one list from another and returns the result.

It should remove *all values* from list a, which are present in list b.

array_diff([1,2],[1]) == [2]
If a value is present in b, ALL of its occurrences must be removed from the other:

array_diff([1,2],[1]) == [2]

=end

def array_diff(array1, array2)
  array1.select { |num| !array2.include?(num) }
end

p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []

# Codewars:

# def array_diff(a, b)
#   a.reject { |num| b.include?(num) }
# end