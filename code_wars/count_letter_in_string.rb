=begin

6 kyu

In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with
'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby.

=end

def letter_count(string)
  results = {}
  string.chars.uniq.sort.each do |char|
    count = string.count(char)
    results[char.to_sym] = count
  end
  results
end

p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}


