=begin

6 kyu - Tricky (use sorting methods, not pushing to hash)

Not to brag, but I recently became the nexus of the Codewars universe! My honor and my rank
were the same number. I cried a little.

Complete the method that takes a hash list of users, and find the
nexus: the user whose rank is the closest is equal to his honor. Return the rank of this user.
For each user, the key is the rank and the value is the honor.

If nobody has an exact rank/honor match, return the rank of the user who comes closest. If t
here are several users who come closest, return the one with the lowest rank (numeric value).
The hash will not necessarily contain consecutive rank numbers; return the best match from the ranks provided.

Example
         rank    honor
users = {  1  =>  93,
          10  =>  55,
          15  =>  30,
          20  =>  19,    <--- nexus
          23  =>  11,
          30  =>   2 }
=end

# input: hash
# output: integer representing the key of a pair
# rules:
  # If nobody has an exact rank/honor match, return the rank of the user who comes closest.
  # If there are several users who come closest, return the one with the lowest rank (numeric value).
  # The hash will not necessarily contain consecutive rank numbers; return the best match from the ranks provided.
# alg:
  # sort by hash key (this will ensure that lowest key always is returned first) => nested arrays
  # sort by the difference between key and value => will return nested arrays?
  # return the first element of the first pair

def nexus(hash)
  hash.sort.sort_by { |array| (array[0] - array[1]).abs }.first.first
end

p nexus({1 => 3, 3 => 3, 5 => 1}) == 3
p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) == 2
