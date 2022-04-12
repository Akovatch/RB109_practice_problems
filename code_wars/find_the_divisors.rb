# Create a function named divisors/Divisors that takes an integer n > 1 and
# returns an array with all of the integer's divisors(except for 1 and the
# number itself), from smallest to largest. If the number is prime return
# the string '(integer) is prime'

# Example:
# divisors(12) # should return [2,3,4,6]
# divisors(25) # should return [5]
# divisors(13) # should return "13 is prime"


def divisors(n)
  results = []
  (2..(n / 2)).each do |divisor|
    results << divisor if (n % divisor == 0)
  end
  return "#{n} is prime" if results == []
  results
end

p divisors(12) == [2,3,4,6]
p divisors(25) == [5]
p divisors(13) == "13 is prime"