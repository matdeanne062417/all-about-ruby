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
