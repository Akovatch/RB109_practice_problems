# 6 kyu

# Write a function that takes in a string of one or more words, and returns the same string,
# but with all five or more letter words reversed (Just like the name of this Kata). Strings
# passed in will consist of only letters and spaces. Spaces will be included only when more
# than one word is present.

# Examples:
# spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
# spinWords( "This is a test") => returns "This is a test"
# spinWords( "This is another test" )=> returns "This is rehtona test"

def spin_words(string)
  string.split.map do |word|
    word.size >= 5 ? word.reverse : word
  end.join(' ')
end

p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
p spin_words("This is a test") == "This is a test"
p spin_words("This is another test")== "This is rehtona test"
