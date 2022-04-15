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

def clean_string(string)
	stack = []
  string.chars.each do |char|
    if char == '#'
      stack.pop
    else
      stack << char
    end
  end
  stack.join
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""

