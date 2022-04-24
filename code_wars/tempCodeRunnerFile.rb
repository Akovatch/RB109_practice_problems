
# def longest(string)
#   results = []
#   string.chars.each do |char|
#     if results.empty? || char >= results[-1]
#       results << char
#     else
#       results << " "
#       results << char
#     end
#   end
#   results.join.split(' ').max_by { |word| word.length }
# end
