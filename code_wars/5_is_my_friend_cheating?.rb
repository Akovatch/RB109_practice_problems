# 5kyu - both of my solutions timed out in codewars...a solution that doesn't require complex algebra

# A friend of mine takes the sequence of all numbers from 1 to n (where n > 0).
# Within that sequence, he chooses two numbers, a and b.

# He says that the product of a and b should be equal to the sum of all numbers
# in the sequence, excluding a and b.

# Given a number n, could you tell me the numbers he excluded from the sequence?

# The function takes the parameter: n (n is always strictly greater than 0) and
# returns an array or a string (depending on the language) of the form:

# [(a, b), ...] or [[a, b], ...] or {{a, b}, ...} or or [{a, b}, ...]
# with all (a, b) which are the possible removed numbers in the sequence 1 to n.

# [(a, b), ...] or [[a, b], ...] or {{a, b}, ...} or ... will be sorted in
# increasing order of the "a".

# It happens that there are several possible (a, b). The function returns an
# empty array (or an empty string) if no possible numbers are found which will
# prove that my friend has not told the truth! (Go: in this case return nil).

# nested iterations - timed out

def removNb(n)
  results = []
  (1..n).each do |num1|
    (1..n).each do |num2|
      sum = (1..n).to_a.sum - (num1 + num2)
      results << [num1, num2] if num1 * num2 == sum
    end
  end
  results
end

# solution using combination - timed out

def removNb(n)
  results = []
  combos = (1..n).to_a.combination(2).to_a
  combos.each do |combo|
    sum = (1..n).to_a.sum - combo.sum
    if combo.reduce(:*) == sum
      results << combo
      results << combo.reverse
    end
  end
  results
end

p removNb(26) == [[15, 21], [21, 15]]
p removNb(100) == []

