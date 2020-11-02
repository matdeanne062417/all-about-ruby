# We have a "Confection" class representing baked desserts.
# Your job is to create a new subclass of "Confection", named "Cupcake" and "Banana Cake".
# Cupcakes and Banana Cakes need to be baked just like other confections,
# but cupcakes also need to be frosted afterward.
# Write a "prepare" method for your "Cupcake" and "Banana Cake" class that prints "Baking at 350 degrees for 25 minutes.",
# and then prints "Applying frosting" for "Cupcake" only.



class Confection
  def prepare
    puts "Baking at 350 degrees for 25 minutes"
  end
end

class Bananacake < Confection
  
end

class Cupcake < Confection
  def frosting
  puts "Applying Frosting"
  end
end

banana = Bananacake.new
cup = Cupcake.new
banana.prepare
cup.prepare
cup.frosting
