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

# input: string in pascal case
# output: string in snake_case
# rules:
  # all lowercase, seperated by underscore
  # numbers should be converted to digits

# algorithm:
  # init results array
  # iterate over chars of string (chars array)
    # push all chars into results array
      # if char is uppercase, push an "_" into results ahead of the char
  # join and downcase results array, remove first char

def to_underscore(string)
  return string.to_s if string == string.to_s.to_i
  results = []
  string.chars.each do |char|
    char =~ /[A-Z]/ ? results << "_" + char.downcase : results << char
  end
  results.join[1..-1]
end

p to_underscore("TestController") ==  "test_controller"
p to_underscore("MoviesAndBooks") == "movies_and_books"
p to_underscore("App7Test") == "app7_test"
p to_underscore(1) == "1"
