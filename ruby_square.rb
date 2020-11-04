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
    (0..x).each do |ctr|
      puts "#{ctr} is not the square root of #{x}" if (ctr*ctr) != x
      return "#{ctr} is the square of #{x}" if (ctr*ctr) == x
    end
    "#{x} has no square root"
end

puts is_square(100)


# (1..5).each do |num|
#   puts num
# end