# Your job is to write a function which increments a string, to create a new string.

# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.
# Examples:

# foo -> foo1

# foobar23 -> foobar24

# foo0042 -> foo0043

# foo9 -> foo10

# foo099 -> foo100

# Attention: If the number has leading zeros the amount of digits should be considered.
  # note: if you call #next on a STRING number with leading 0s the 0s are maintained

def increment_string(string)
  return '1' if string == ''
  return string + '1' if string.chars.last =~ /[a-z]/
  letters, numbers = string.chars.partition { |char| char =~ /[a-z]/ }
  letters.join + numbers.join.next
end

p increment_string("foo") == "foo1"
p increment_string("foobar001") == "foobar002"
p increment_string("foobar1") == "foobar2"
p increment_string("foobar00") == "foobar01"
p increment_string("foobar99") == "foobar100"
p increment_string("") == "1"
