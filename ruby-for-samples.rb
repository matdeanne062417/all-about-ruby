class Animal
    def initialize(name, color, age)
        @name = name
        @color = color
        @age = age 
    end

    def walk
        puts "hey! #{@name}, let's walk"
    end
end

cat = Animal.new('kitty', 'white', 1)
cat.walk
puts cat.name