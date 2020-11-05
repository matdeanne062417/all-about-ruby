# You like building blocks. You especially like building blocks that are squares. And what you even like more, is to arrange them into a square of square building blocks!

# However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle! Those blasted things! If you just had a way to know, whether you're currently working in vain… Wait! That's it! You just have to check if your number of building blocks is a perfect square.
# ===========
# Task:

# Given an integral number, determine if it's a square number: return true if it's a square number, otherwise return false.

# In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself.
# =======

# Examples

# -1 => false
# 0 => true
# 3 => false
# 4 => true
# 25 => true
# 26 => false

def is_square(x)
  n = 1
    while n <= x 
    x = x - n
    n = n + 2
    return true if x == 0
    end
    false
end

puts is_square(100)
puts is_square(99)
puts is_square(81)
puts is_square(9081)
puts is_square(1111)

# Flowchart
#                          false          false
#         x --->> (n <= x) --->> (x == 0) --->> output false
#         ^           |              |
#         |      true |         true |
#         |           v              v
#         |--------(x - n)      output true


# def is_square(x)
#     (0..x).each do |ctr|
#       return true if (ctr*ctr) == x
#     end
#     false
# end

# puts is_square(-1)
# puts is_square(99)
# puts is_square(5000)
# puts is_square(9801)
# puts is_square(9)
# puts is_square(88)

# # Flowchart
#                           # false               false                   false                   false
#     # x ----> (if 0*0 == x) ----> (if 1*1 == x) ----> (if 2*2 == x) .... ---> (if ctr*ctr == x) ---> output "false"
#                   # |                   |                     |                      |
#               # true|               true|                 true|                  true|
#                   # V                   V                     V                      V
#           # output "true"     output "true"         output "true"             output "true"



