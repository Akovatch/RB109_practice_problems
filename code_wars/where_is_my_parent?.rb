=begin

Where's my parent?

6 kyu

Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children.
# All are having great fun on the dance floor when suddenly all the lights went out.
# It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark
# and have ability to teleport people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".

-Function input: String contains only letters, uppercase letters are unique.

Task:
Place all people in alphabetical order where Mothers are followed by their children, i.e. "aAbaBb" => "AaaBbb".
=end

# input: string
# output: string
# rules:
  # Caps are unique, lc are not
  # All like letter together with Cap first
# algorithm:
  # init results hash
  # init final arr
  # iterate over chars of the string
    # if a char is upcase, then push it into the hash along with the number of times itself (downcased) occurs in the string
  # iterate through hash
    # for each key, push the key into the arr along with itself downcased * value
  # return final arr

def find_children(string)
  num_occurrences = {}
  string.chars.each do |char|
    if char = char.upcase
      count = string.count(char.downcase)
      num_occurrences[char] = count
    end
  end
  num_occurrences.map { |key, value| key + (key.downcase * value) }.sort.join
end

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""

