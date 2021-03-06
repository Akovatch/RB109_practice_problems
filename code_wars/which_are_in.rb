=begin

6 kyu

Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings
of a1 which are substrings of strings of a2.

#Example 1: a1 = ["arp", "live", "strong"]


a2 = ["lively", "alive", "harp", "sharp", "armstrong"]


returns ["arp", "live", "strong"]


#Example 2: a1 = ["tarp", "mice", "bull"]


a2 = ["lively", "alive", "harp", "sharp", "armstrong"]


returns []

Beware: r must be without duplicates.
Don't mutate the inputs.
=end

def in_array(array1, array2)
  array1.select do |word1|
    array2.any? do |word2|
      word2.include?(word1)
    end
  end.sort
end

a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p in_array(a1, a2) == ["arp", "live", "strong"]

a1 = ["tarp", "mice", "bull"]
p in_array(a1, a2) == []

