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

# input: string
# output: string
# rules:
  # If the string already ends with a number, the number should be incremented by 1.
  # If the string does not end with a number, the number 1 should be appended to the new string.
  # If the number has leading zeros the amount of digits should be considered.
# algorithm:
  # partition letters from string digits (assign to variables, letters and numbers, representing arrays)
    # join numbers and get next number
    # join letters, add numbers results
      # if numbers is empty, add '1' to the end of letters (joined)

def increment_string(string)
  letters, numbers = string.chars.partition { |char| char =~ /[a-zA-Z]/ }
  numbers.empty? ? letters.join + '1' : letters.join + numbers.join.next
end

p increment_string("foo") == "foo1"
p increment_string("foobar001") == "foobar002"
p increment_string("foobar1") == "foobar2"
p increment_string("foobar00") == "foobar01"
p increment_string("foobar99") == "foobar100"
p increment_string("") == "1"
