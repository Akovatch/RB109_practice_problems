# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

def to_weird_case(string)
  string.split.each_with_index.map do |word, index1|
    if (index1 + 1) % 3 == 0
      word.chars.each_with_index.map { |char, index2| index2.odd? ? char.upcase : char }.join
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





























# def to_weird_case(sentence)
#   sentence.split.each_with_index.map do |word, index1|
#     if (index1 + 1) % 3 == 0
#       word.chars.each_with_index.map do |char, index2|
#         index2.odd? ? char.upcase : char
#       end.join
#     else
#       word
#     end
#   end.join(' ')
# end

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
# 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case('It is a long established fact that a reader will be distracted') ==
# 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') ==
# 'aaA bB c'
# p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
# 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'
