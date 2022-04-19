# 5 kyu

# ROT13 is a simple letter substitution cipher that replaces a letter
# with the letter 13 letters after it in the alphabet. ROT13 is an
# example of the Caesar cipher.

# Create a function that takes a string and returns the string ciphered
# with Rot13. If there are numbers or special characters included in the string,
# they should be returned as they are. Only letters from the latin/english alphabet
# should be shifted, like in the original Rot13 "implementation".

ALPHA = %w(* a b c d e f g h i j k l m n o p q r s t u v w x y z)

def rot13(string)
  string.chars.map do |char|
    upcase = false
    char == char.upcase ? upcase = true : upcase = false
    char.downcase!
    if ALPHA.include?(char)
      idx = ALPHA.index(char) + 13
      idx -= 26 if idx > 26
      new_char = ALPHA[idx]
      upcase == true ? new_char.upcase : new_char
    else
      char
    end
  end.join
end

p rot13("grfg") # == "test"
p rot13("Grfg") # == "Test"

# Codewar's solution:

def rot13(string)
  string.gsub /[a-zA-Z]/ do |s|
    ascii = s.ord
    base = if ascii >= 'a'.ord then 'a'.ord else 'A'.ord end
    ((ascii - base + 13) % 26 + base).chr
  end
end

#or

def rot13(string)
  alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPGRSTUVWXYZ'
  rot_alphabet = 'nopqrstuvwxyzabcdefghijklmNOPGRSTUVWXYZABCDEFGHIJKLM'
  string.tr(alphabet, rot_alphabet)
end