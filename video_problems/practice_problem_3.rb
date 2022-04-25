# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# input: string sentence
# output: string in weird case
# rules:
  # all other chars should remain the same
  # assuming valid input (no nil or empty string)
# algorithm:
  # split sentence into words
  # iterate over words (each_with_index and map)
    # if the index + 1 is divisible by 3 then:
      # iterate over chars of the word (each_with_index and map), upcasing any char with an odd index
      # join chars array

def to_weird_case(sentence)
  sentence.split.each_with_index.map do |word, index1|
    if (index1 + 1) % 3 == 0
      word.chars.each_with_index.map do |char, index2|
        index2.odd? ? char.upcase : char
      end.join
    else
      word
    end
  end.join(' ')
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') ==
'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') ==
'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'
