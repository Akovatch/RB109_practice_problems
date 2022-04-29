# 5 kyu

# The marketing team is spending way too much time typing in hashtags.
# Let's help them with our own Hashtag Generator!

# Here's the deal:

def generate_hashtag(string)
  return false if string == ''
  result = '#' + string.split.map { |word| word.capitalize }.join('')
  result.length > 140 ? false : result
end

p generate_hashtag(" Hello there thanks for trying my Kata") == "#HelloThereThanksForTryingMyKata"
p generate_hashtag("    Hello     World   ") == "#HelloWorld"
p generate_hashtag("") == false


