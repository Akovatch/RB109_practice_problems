# 5 kyu

# Complete the method so that it takes a PascalCase string
# and returns the string in snake_case notation. Lowercase characters
# can be numbers. If the method gets a number as input,
# it should return a string.

# Examples
# "TestController"  -->  "test_controller"
# "MoviesAndBooks"  -->  "movies_and_books"
# "App7Test"        -->  "app7_test"
# 1                 -->  "1"



p to_underscore("TestController") ==  "test_controller"
p to_underscore("MoviesAndBooks") == "movies_and_books"
p to_underscore("App7Test") == "app7_test"
p to_underscore(1) == "1"



























# def to_underscore(string)
#   results = []
#   return string.to_s if string.to_s.to_i == string
#   string.chars.each do |char|
#     char.downcase == char ? results << char : results << '_' + char.downcase
#   end
#   results.join[1..-1]
# end
