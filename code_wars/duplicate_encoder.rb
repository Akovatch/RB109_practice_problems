# 6 kyu

# The goal of this exercise is to convert a string to a new string where each character
# in the new string is "(" if that character appears only once in the original string,
#   or ")" if that character appears more than once in the original string. Ignore
#   capitalization when determining if a character is a duplicate.

# Examples
# "din"      =>  "((("
# "recede"   =>  "()()()"
# "Success"  =>  ")())())"
# "(( @"     =>  "))(("

# input: string
# output: string made up of "(" and ")"
# rules:
  # ignore capitalization
  # numbers and special characters are valid
# alg:
  # init results array
  # iterate over chars of string downcased (split into chars array)
    # if char occurs once (#count), push ( into results
    # if char occurs more than once push ) into results
  # join and return results

def duplicate_encode(string)
  string.downcase.chars.map { |char| string.count(char) == 1 ? '(' : ')' }.join
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("
