class Profile
  attr_accessor :full_name, :age, :work
  def initialize(full_name, age, address, work)
    @full_name = full_name
    @age = age
    @address = address
    @work = work
  end
end

my_profile = Profile.new('Ana', 18, 'Bulacan', 'Instructor')

puts my_profile.full_name
my_profile.full_name = 'Analyn Cajocson'
puts my_profile.full_name

my_profile.age = 25
my_profile.work = 'Software Engineer'
puts my_profile.age
puts my_profile.work
