=begin

6 kyu

Write a function to WeirdCase (weirdcase in Ruby) that accepts a string, and returns
 the same string with all even indexed characters in each word upper cased, and all
  odd indexed characters in each word lower cased. The indexing just explained is
   zero based, so the zero-ith index is even, therefore that character should be upper cased.

The passed in string will only consist of alphabetical characters and spaces(' ').
 Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').
=end

# input: string
# output: string
# rules:
  # spaces only present if mult words
  # only alpha chars and spaces
  # index starts at first char of each word (first char is 0)
# alg:
  # split into words
  # iterate over words (map)
     # iterate over chars of word (ewi)
       # if index is even, upcase (tern)
       # otherwise downcase
  # join array returned by #map

def weirdcase(string)
  string.split.map do |word|
   new_word = ''
   word.chars.each_with_index do |char, index|
      index.even? ? new_word << char.upcase : new_word << char.downcase
    end
    new_word
  end.join(' ')
end

p weirdcase( "String" ) == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"

