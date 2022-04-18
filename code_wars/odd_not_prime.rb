# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

def odd_not_prime(int)
  results = [1]
  (3..int).each do |num|
    results << num if num.odd? && !prime?(num)
  end
  p results
  results.size
end

def prime?(input)
  (2...input).each do |num|
  return false if input % num == 0
  end
end

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20