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

# input: integer
# output: string number in 'expanded form'
# rules:
  # all input whole numbers greater than 0
# algorithm:
  # plan: convert integer to string, reverse, and multiply each digit by its place
    # init results array
    # convert integer to string, reverse, convert to chars array
    # iterate over chars (each_with_index)
      # results recieves char (converted back to int) multiplied by 10 ** index (if char > 0)
    # reverse results array
    # return string using string interpolation

def expanded_form(num)
  results = []
  num.to_s.reverse.chars.each_with_index do |char, index|
    results << char.to_i * (10 ** index) if char.to_i * (10 ** index) > 0
  end
  results.reverse!.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

