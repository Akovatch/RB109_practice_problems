
# 5 kyu

# In this kata, you will write a function that returns the positions
# and the values of the "peaks" (or local maxima) of a numeric array.

# For example, the array arr = [0, 1, 2, 5, 1, 0] has a peak at
# position 3 with a value of 5 (since arr[3] equals 5).

# The output will be returned as an object with two properties:
# pos and peaks. Both of these properties should be arrays (as a pair's value)
# If there is no peak in the given array, then the output
# should be {pos: [], peaks: []}.

# Example: pickPeaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3])
# should return {pos: [3, 7], peaks: [6, 3]} (or equivalent
# in other languages)

# All input arrays will be valid integer arrays (although it
# could still be empty), so you won't need to validate the input.

# The first and last elements of the array will not be considered
# as peaks (in the context of a mathematical function, we don't know
# what is after and before and therefore, we don't know if it is a peak or not).

# Also, beware of plateaus !!! [1, 2, 2, 2, 1] has a peak while
# [1, 2, 2, 2, 3] and [1, 2, 2, 2, 2] do not. In case of a plateau-peak,
# please only return the position and value of the beginning of the plateau.
# For example: pickPeaks([1, 2, 2, 2, 1]) returns {pos: [1], peaks: [2]}
# (or equivalent in other languages)

  # input: array of integers
  # output: a hash
  # rules:
  # If there is no peak in the given array, then the output should be {pos: [], peaks: []}.
  # All input arrays will be valid integer arrays (although it could still be empty)
  # The first and last elements of the array will not be considered as peaks
  # ***for a plateu, only return pos and value of first num of plateau
  
def pick_peaks(array)
  results = {"pos" => [], "peaks" => []}
  array.each_with_index do |num1, index|
    next if index == 0 or index == array.size - 1 # excluding first and last
    if num1 > array[index - 1] # if num is greater than last
      (array[index..array.length - 1]).each do |num2| # iterate through next few nums
        results["pos"] << index if num2 < num1 # push into results if num goes down
        results["peaks"] << num1 if num2 < num1
        break if num2 < num1 || num2 > num1 # break if it goes up or down
      end
    end
  end
  results
end

p pick_peaks([2,1,3,1,2,2,2,2]) == {"pos"=>[2], "peaks"=>[3]}
p pick_peaks([1,2,3,6,4,1,2,3,2,1]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1]) == {"pos"=>[3,7,10], "peaks"=>[6,3,2]}
p pick_peaks([2,1,3,1,2,2,2,2,1]) == {"pos"=>[2,4], "peaks"=>[3,2]}
