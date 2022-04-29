=begin

5 kyu

Complete the function that
 - accepts two integer arrays of equal length
 - compares the value of each member in one array to the corresponding member in the other
 - squares the absolute value difference between those two values
 - and returns the average of those squared absolute value difference between each member pair.

Examples:

[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

=end

def solution(array1, array2)
  results = []
  array1.each_with_index do |num1, index|
    results << (array2[index] - num1).abs
  end
  results.map { |num| num ** 2 }.sum.to_f / array1.size
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1])  == 1


