# Given an array of integers, your solution should find the smallest integer.

# For example:

# Given [34, 15, 88, 2] your solution will return 2
# Given [34, -345, -1, 100] your solution will return -345

# You can assume, for the purpose of this exercise, that the supplied array will not be empty.

arr = [34, 15, 88, 2]
arr2 = [34, -345, -1, 100]

def is_smallest(arr)
  for num in arr
    while num<arr[0]
      arr[0] = num
    end
  end
  return arr[0]
end

puts is_smallest(arr)
puts is_smallest(arr2)