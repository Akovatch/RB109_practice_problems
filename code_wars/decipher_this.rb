=begin

Decipher this!

6 kyu

You are given a secret message you need to decipher. Here are the things you need to know to decipher it:

For each word:

the second and the last letter is switched (e.g. Hello becomes Holle)
the first letter is replaced by its character code (e.g. H becomes 72)
Note: there are no special characters used, only letters and spaces

Examples

decipherThis('72olle 103doo 100ya'); // 'Hello good day'
decipherThis('82yade 115te 103o'); // 'Ready set go'

# input: string fo letters and digits
# output: a string of letters
# rules:
  # 2nd and last char switched
  # 1st char replaced by ascii code
  # assuming no empty strings
# algorithm:
  # iterate over words of sentence - transform each word
    # partition numbers from letters - paralell assignment to variables numbers and letters
    # join numbers and convert to letter (#chr)
    # parallel reassignment of first and last letters
    # join the result of both operations
  # join result

=end

def decipher_this(string)
  string.split.map do |word|
    letters, numbers = word.chars.partition { |char| char =~ /[a-zA-Z]/ }
    first = numbers.join.to_i.chr
    letters[0], letters[-1] = letters[-1], letters[0]
    first + letters.join
  end.join(' ')
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"



























# def decipher_this(string)
#   string.split.map do |word|
#     numbers, letters = word.chars.partition { |char| char.to_i.to_s == char }
#     letters[0], letters[-1] = letters[-1], letters[0]
#     numbers.join.to_i.chr << letters.join
#   end.join(' ')
# end

# p decipher_this
