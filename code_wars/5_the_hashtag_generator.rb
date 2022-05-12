# 5 kyu

# The marketing team is spending way too much time typing in hashtags.
# Let's help them with our own Hashtag Generator!

# Here's the deal:

# It must start with a hashtag (#)
.
# All words must have their first letter capitalized.

# If the final result is longer than 140 chars it must return false.

# If the input or the result is an empty string it must return false.

def generate_hashtag(string)
  return false if string == ''
  result = '#' + string.split.map { |word| word.capitalize }.join('')
  result.length > 140 ? false : result
end

p generate_hashtag(" Hello there thanks for trying my Kata") == "#HelloThereThanksForTryingMyKata"
p generate_hashtag("    Hello     World   ") == "#HelloWorld"
p generate_hashtag("") == false


































