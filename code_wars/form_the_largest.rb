# Given a number, Return The Maximum number could be formed from the digits of the number given .

# Only Natural numbers passed to the function , numbers Contain digits [0:9] inclusive

# Digit Duplications could occur , So also consider it when forming the Largest

# max_number(213) == 321
# Explanation:
# As 321 is _The Maximum number _ could be formed from the digits of the number 213 .

# max_number(7389) == 9873
# Explanation:
# As 9873 is _The Maximum number _ could be formed from the digits of the number 7389 .

# max_number(63729) == 97632
# Explanation:
# As 97632 is _The Maximum number _ could be formed from the digits of the number 63729 .

# max_number(566797) == 977665
# Explanation:
# As 977665 is _The Maximum number _ could be formed from the digits of the number 566797 .
# Note : Digit duplications are considered when forming the largest .

# max_number(17693284) == 98764321
# Explanation:
# As 98764321 is _The Maximum number _ could be formed from the digits of the number 17693284 .

def max_number(n)
  n.to_s.chars.sort.reverse.join.to_i
end

p max_number(213) == 321
p max_number(7389) == 9873
p max_number(63729) == 97632
p max_number(566797) == 977665
p max_number(17693284) == 98764321



