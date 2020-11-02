class Hello
  def initialize(name, age, hobby)
    @name = name
    @age = age
    @hobby = hobby
  end

  def greetings
    puts "Hello #{@name}, you're #{@age} and love to do #{@hobby}"
  end
end

matthew = Hello.new("matthew", 29, "basketball")
matthew.greetings

//object is the blueprint of all the definitions 
//class is the name define in an object
//method is the name of the function
