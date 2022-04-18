=begin

6 kyu - Tricky (make sure to run random tests in CW)

Not to brag, but I recently became the nexus of the Codewars universe! My honor and my rank
were the same number. I cried a little.

Complete the method that takes a hash/object/directory/association list of users, and find the
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

  def nexus(users)
    users.sort.sort_by { |key, value| (key - value).abs }.first.first
  end

  # My original solution worked with the given tests but not the random tests in codewars. The solution was to add #sort before #sort_by, as this
  # ensured that when a the first item was returned it would already have the the lowest key. Otherwise, the method would return the equal pairs
  # in the order they first appeared.

p nexus({1 => 3, 3 => 3, 5 => 1}) # == 3
p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) # == 3
p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) # == 2