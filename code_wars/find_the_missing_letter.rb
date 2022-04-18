=begin

6 kyu

#Find the missing letter


Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.


You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.


Example:


['a','b','c','d','f'] -> 'e' ['O','Q','R','S'] -> 'P'


["a","b","c","d","f"] -> "e"
["O","Q","R","S"] -> "P"
(Use the English alphabet with 26 letters!)

=end

def find_missing_letter(arr)
  last_letter = arr[0]
  1.upto(arr.size - 1) do |index|
    arr[index] == last_letter.next ? last_letter = arr[index] : break
  end
  last_letter.next
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"