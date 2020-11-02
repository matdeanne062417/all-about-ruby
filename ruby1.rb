class Profile
    attr_accessor :full_name, :age, :work
    def initialize(full_name, age, address, work)
      @full_name = full_name
      @age = age
      @addressruby = address
      @work = work
    end
  end
  
  my_profile = Profile.new('Ana', 18, 'Bulacan', 'Instructor')
  
  puts my_profile.full_name
  my_profile.full_name = 'Analyn Cajocson'
  my_profile.age = 25
  my_profile.work = 'Software Engineer'
  puts my_profile.full_name
  puts my_profile.age
  puts my_profile.work
  
  class User
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
    def run
      puts "is running"
    end
  
    def walk
      puts "is walking"
    end
  end
  
  class Admin < User
  end
  
  ana = Admin.new("Matt")
  ana.run
  ana.walk
  puts ana.name
  
  
  