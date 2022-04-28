# 5 kyu

# A Man and his Umbrellas

# Each morning a man walks to work, and each afternoon he walks back home.

# If it is raining in the morning and he has an umbrella at home, he takes
# an umbrella for the journey so he doesn't get wet, and stores it at work.
# Likewise, if it is raining in the afternoon and he has an umbrella at work,
# he takes an umbrella for the journey home.

# Given an array of the weather conditions, your task is to work out the minimum
# number of umbrellas he needs to start with in order that he never gets wet.
# He can start with some umbrellas at home and some at work, but the output is a
# single integer, the minimum total number.

# The input is an array/list of consecutive half-day weather forecasts.
# So, e.g. the first value is the 1st day's morning weather and the second
# value is the 1st day's afternoon weather. The options are:

# "clear",
# "sunny",
# "cloudy",
# ***"rainy",
# "overcast",
# "windy"
# ***"thunderstorms".
# e.g. for three days, 6 values:

# weather = ["rainy", "cloudy", "sunny", "sunny", "cloudy", "thunderstorms"]
# N.B. He never takes an umbrella if it is not raining.

# Examples:
# minUmbrellas(["rainy", "clear", "rainy", "cloudy"])
# should return 2

# Because on the first morning, he needs an umbrella to take, and he leaves
# it at work. So on the second morning, he needs a second umbrella.

# minUmbrellas(["sunny", "windy", "sunny", "clear"])
# should return 0

# Because it doesn't rain at all

# minUmbrellas(["rainy", "rainy", "rainy", "rainy", "thunderstorms", "rainy"])
# should return 1

# Because he only needs 1 umbrella which he takes on every journey.

# input: array of strings (weather)
# output: an integer representing # of umbrellas
# rules:
  # only takes an umbrella if its raining
# algorithm:
  # [0, 0]
  # iterate over words of array
    # if even indexed element is rainy, then increment work var, unless previous was rainy or home == 1
    # if odd indexed element is rainy, increment home var, unless previous was rainy or work == 1
    # get total of variables

RAINY = ["rainy", "thunderstorms"]

def min_umbrellas(weather)
  home = 0
  work = 0
  previous = ''
  weather.each_with_index do |condition, index|
    if index.even? && RAINY.include?(condition) && !RAINY.include?(previous) && home != 1
      work += 1
    elsif index.odd? && RAINY.include?(condition) && !RAINY.include?(previous) && work != 1
      home += 1
    end
    previous = condition
  end
  work + home
end

p min_umbrellas(["rainy", "clear", "rainy", "cloudy"]) == 2
p min_umbrellas(["sunny", "windy", "sunny", "clear"]) == 0
p min_umbrellas(["cloudy"]) == 0
p min_umbrellas(["rainy", "rainy", "rainy", "rainy"]) == 1
p min_umbrellas(["overcast", "rainy", "clear", "thunderstorms"]) == 2


