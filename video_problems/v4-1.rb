# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find
# a substring that appears in both strings, or false if you do not.

# We only care about substrings that are longer than one letter long.

def substring_test(string1, string2)
  (0...string1.length - 1).each do |index|
    substring = string1[index, 2]
    return true if string2.downcase.include?(substring.downcase)
  end
  false
end

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('Something', 'Fun') == false