=begin

6 kyu

Write a method that takes a string as an argument and groups the number of times
each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.
=end

def get_char_count(string)
  results = {}
  string = string.downcase
  string.chars.each do |letter|
    count = string.count(letter)
    if results.key?(count) && letter =~ /[a-z0-9]/
      results[count] << letter
    elsif letter =~ /[a-z0-9]/
      results[count] = [letter]
    end
  end
  results = results.map do |k, v|
    [k, v.sort.uniq]
  end.sort.reverse.to_h
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
