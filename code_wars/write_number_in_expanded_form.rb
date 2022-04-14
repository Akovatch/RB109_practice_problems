=begin

6 kyu

Write Number in Expanded Form

You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.

If you liked this kata, check out part 2!!
=end

# Mathematical solution:

def expanded_form(num)
  results = []
  (1..(num.to_s.length)).each do |n|
    remainder = num % (10 ** n)
    if remainder != 0
      results << remainder
      num -= remainder
    end
  end
  results.reverse.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

# Solution using string methods:

def expanded_form(num)
  results = []
  num.to_s.chars.reverse.each_with_index do |value, index|
    next if value.to_i == 0
    results << value.to_i * (10 ** index)
  end
  results.reverse.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'


