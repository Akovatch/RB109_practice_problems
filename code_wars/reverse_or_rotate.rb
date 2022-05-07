
=begin

6 kyu - not super hard but quite time consuming due to all that is being asked

Reverse or rotate?

The input is a string str of digits. Cut the string into chunks (a chunk here is a substring of the initial string)
of size sz (ignore the last chunk if its size is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, reverse that chunk;
otherwise rotate it to the left by one position. Put together these modified chunks and return the result as a string.

If:
sz is <= 0 or if str is empty return ""
sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".

=end

def revrot(string, sz)
  return '' if sz <= 0
  results = []
  sum = 0
  string.chars.each_slice(sz) do |slice|
    sum = 0
    break if slice.size < sz
    sum = slice.map(&:to_i).reduce { |sum, digit| sum += (digit ** 3) }
    sum % 2 == 0 ? results << slice.reverse : results << slice.rotate
  end
  results.empty? ? '' : results.join
end

p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""
p revrot("563000655734469485", 4) == "0365065073456944"

































# def revrot(str, sz)
#   return "" if sz > str.length || sz <= 0 || str.empty?
#   results = ""
#   str.chars.each_slice(sz) do |slice|
#     sum = 0
#     break if slice.size < sz
#     slice.each do |char|
#       sum += char.to_i ** 3
#     end
#     sum % 2 == 0 ? results << slice.reverse.join : results << slice.rotate.join
#   end
#   results
# end



