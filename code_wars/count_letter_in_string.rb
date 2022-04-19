=begin

6 kyu

In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with
'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby.

=end

ALPHABET = ('a'..'z').to_a

def letter_count(string)
  results = {}
  ALPHABET.each do |letter|
    count = string.count(letter)
    results[letter.to_sym] = count if count > 0
  end
  results
end

p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

# Codewars solution:

def letter_count(str)
  str.chars.each_with_object(Hash.new(0)) { |letter, hash| hash[letter.to_sym] += 1 }
end


