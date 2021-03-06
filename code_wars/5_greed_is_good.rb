# 5 kyu

# Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it,
# is to score a throw according to these rules. You will always be given an array with five six-sided dice values.

#  Three 1's => 1000 points
#  Three 6's =>  600 points
#  Three 5's =>  500 points
#  Three 4's =>  400 points
#  Three 3's =>  300 points
#  Three 2's =>  200 points

#  One   1   =>  100 points
#  One   5   =>   50 point
# A single die can only be counted once in each roll. For example, a given "5" can only count as part of a
# triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.

# Example scoring

#  Throw       Score
#  ---------   ------------------
#  5 1 3 4 1   250:  50 (for the 5) + 2 * 100 (for the 1s)
#  1 1 1 3 1   1100: 1000 (for three 1s) + 100 (for the other 1)
#  2 4 4 5 4   450:  400 (for three 4s) + 50 (for the 5)

# In some languages, it is possible to mutate the input to the function. This is something that you
# should never do. If you mutate the input, you will not be able to pass all the tests.

# input: array of integers
# output: an integer (score)
# rules:
  # don't mutate input array
  # triples will be satisfied, the singles will be scored after
# algorithm: iterate over unique array, get count for each num, use case to score
  # init score variable
  # create uniq array - uniq_array
  # iterate over numbers in uniq array - for each number
    # score using case
      # get count - assign to count varaible
      # see if triples are satisfied - subtract 3 from count variable
      # see if singles are satisfied (1, 5)

def score(array)
  score = 0
  uniq_array = array.uniq
  uniq_array.each do |num|
    count = array.count(num)
    case
    when num == 1 && count >= 3
      score += 1000
      count -= 3
    when num >= 2 && num <= 6 && count >= 3
      score += num * 100
      count -= 3
    end

    case
    when num == 1 && count > 0
      score += 100 * count
    when num == 5 && count > 0
      score += 50 * count
    end
  end
  score
end

p score([2, 3, 4, 6, 2]) == 0
p score([2, 2, 2, 3, 3]) == 200
p score([2, 4, 4, 5, 4]) == 450
p score([5, 1, 3, 4, 1]) == 250
p score([1, 1, 1, 3, 1]) ==  1100

# Codewars solution:

# def score( dice )
#   [ dice.count(1) / 3 * 1000,
#     dice.count(6) / 3 * 600,
#     dice.count(5) / 3 * 500,
#     dice.count(4) / 3 * 400,
#     dice.count(3) / 3 * 300,
#     dice.count(2) / 3 * 200,
#     dice.count(1) % 3 * 100,
#     dice.count(5) % 3 * 50 ].reduce(:+)
# end

