# Given a positive number n > 1 find the prime factor decomposition of n.
# The result will be a string with the following form :

# "(p1**n1)(p2**n2)...(pk**nk)"

# with the p(i) in increasing order and n(i) empty if n(i) is 1.

# Example of Division Method for Prime Factorization:

# Below is a detailed step-by-step process of prime factorization by taking 460 as an example.

      # Step 1: Divide 460 by the least prime number i.e. 2.
      #           So, 460 ÷ 2 = 230

      # Step 2: Again Divide 230 with the least prime number (which is again 2).
      #           Now, 160 ÷ 2 = 115

      # Step 3: Divide again with the least prime number which will be 5.
      #           So, 115 ÷ 5 = 23

      # Step 4: As 23 is a prime number, divide it with itself to get 1.
      #           Now, the prime factors of 460 will be 2**2 x 5 x 23

      # Example: n = 86240 should return "(2**5)(5)(7**2)(11)"

def prime_factors(num)
  results = []
  factors = Hash.new(0)
  remainder = num

  loop do
    divisor = lowest_prime(num)
    break if lowest_prime(num) == nil
    remainder = num / divisor
    factors[divisor] += 1
    num = remainder
  end

  factors[remainder] +=1
  factors.map do |key, value|
    value == 1 ? "(#{key})" : "(#{key}**#{value})"
  end.join
end

def lowest_prime(num) # helper method
  (2..num / 2).each do |divisor|
    return divisor if num % divisor == 0
  end
  nil
end

p prime_factors(7775460) == "(2**2)(3**3)(5)(7)(11**2)(17)"
p prime_factors(86240) == "(2**5)(5)(7**2)(11)"
