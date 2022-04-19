=begin

6 kyu

Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""
=end

# input: string
# output: string
# rules:
  # input or output can be an empty string
# alg:
  # init stack variable
  # iterate over chars (array) of string
    # if a char is a #, delete the last element of the stack
    # otherwise, char goes to stack
  # return the stack joined as a string

def clean_string(string)
  stack = []
  string.chars.each do |char|
    char == '#' ? stack.pop : stack << char
  end
  stack.join
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
