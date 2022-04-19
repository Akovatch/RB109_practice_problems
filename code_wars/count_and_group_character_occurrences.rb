=begin

6 kyu

Write a method that takes a string as an argument and groups the number of times
each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.
=end

# input: string
# ouput: a hash (keys are integers, values are an array of lowercase letters)
# rules:
  # only count digits and letters
  # uppercase are counted as lowercase
  # return values in lowercase form
  # each value array is sorted alphabetically
# alg:
  # init results hash
  # create an alphabet array of lowercase letters
  # iterate of the letters of the alphabet array
    # for each letter (lowercase version), get the count of how many times it happens in the string
      # if the count is greater than 0:
        # if key doesn't exist in the hash, add key and the value as an array ["g"]
        # if the key does exist, add the value to the exiting array (<< "g")
  # sort hash by keys (greatest to smallest)

def get_char_count(string)
  chars = ('0'..'9').to_a + ('a'..'z').to_a
  results = {}
  chars.each do |char|
    count = string.downcase.count(char)
    if count > 0
      results.key?(count) ? results[count] << char : results[count] = [char]
    end
  end
  results.sort_by { |key, _| key }.reverse.to_h
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
