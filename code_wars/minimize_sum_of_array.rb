# Given an array of integers , Find the minimum sum which is obtained from summing each Two integers product .

# Array/list will contain positives only

# Array/list will always has even size

# Examples:
# minSum({5,4,2,3}) ==> return (22)
# The minimum sum obtained from summing each two integers product , 5*2 + 3*4 = 22

# minSum({12,6,10,26,3,24}) ==> return (342)
# The minimum sum obtained from summing each two integers product , 26*3 + 24*6 + 12*10 = 342

# minSum({9,2,8,7,5,4,0,6}) ==> return (74)
# The minimum sum obtained from summing each two integers product , 9*0 + 8*2 +7*4 +6*5 = 74

def min_sum(arr)
  results = []
  arr.sort!
  0.upto(arr.size / 2 - 1) do |index|
    results << arr[index] * arr[-(index + 1)]
  end
  results.sum
end

p min_sum([5, 4, 3, 2]) == 22
p min_sum([12, 6, 10, 26, 3, 24]) == 342
p min_sum([9, 2, 8, 7, 5, 4, 0, 6]) == 74