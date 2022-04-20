# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

def to_weird_case(sentence)
  words = sentence.split
  words.map do |word|
    if (words.index(word) + 1) % 3 == 0
      word.chars.each_with_index.map { |char, index| index.even? ? char : char.upcase }.join
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
