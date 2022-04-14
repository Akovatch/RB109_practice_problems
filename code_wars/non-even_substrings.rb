=begin

Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

=end

def solve(str)
  results = []
  0.upto(str.length - 1) do |index1|
    index1.upto(str.length - 1) do |index2|
     results << str[index1..index2] if (str[index1..index2]).to_i.odd?
    end
  end
  results.size
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28