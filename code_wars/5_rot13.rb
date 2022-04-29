# 5 kyu

# ROT13 is a simple letter substitution cipher that replaces a letter
# with the letter 13 letters after it in the alphabet. ROT13 is an
# example of the Caesar cipher.

# Create a function that takes a string and returns the string ciphered
# with Rot13. If there are numbers or special characters included in the string,
# they should be returned as they are. Only letters from the latin/english alphabet
# should be shifted, like in the original Rot13 "implementation".


ALPHA = ('a'..'z').to_a

def rot13(string)
  string.chars.map do |char|
    index = ALPHA.index(char.downcase)
    if char =~ /[a-z]/
      ALPHA.rotate(13)[index]
    elsif char =~ /[A-Z]/
      ALPHA.rotate(13)[index].upcase
    else
      char
    end
  end.join
end

p rot13("grfg") == "test"
p rot13("Grfg") == "Test"


# Codewars solution:

# def rot13(string)
#   alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPGRSTUVWXYZ'
#   rot_alphabet = 'nopqrstuvwxyzabcdefghijklmNOPGRSTUVWXYZABCDEFGHIJKLM'
#   string.tr(alphabet, rot_alphabet)
# end