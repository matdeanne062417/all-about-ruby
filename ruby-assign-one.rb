(1..10).each {|n| puts "current number is: #{n}"}

h = {a:1, b:2, c:3, d:4}
puts h[:b]
h[:e] = 5
puts h

contact_data = [["ana@gmail.com", "123 Main st
", "555-123-4567"], ["avion@email.com", "404 Not Found Dr", "123-
34-3454"]]
contacts = {"Analyn Cajocson" => {},"AvionSchool" => {}}
contacts["Analyn Cajocson"].store(:email, contact_data[0][0])
contacts["Analyn Cajocson"].store(:address, contact_data[0][1])
contacts["Analyn Cajocson"].store(:tel, contact_data[0][2])
contacts["AvionSchool"].store(:email, contact_data[1][0])
contacts["AvionSchool"].store(:address, contact_data[1][1])
contacts["AvionSchool"].store(:tel, contact_data[1][2])
puts contacts

puts "How old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be:"
puts age +  10
puts "In 20 years you will be:"
puts age +  20
puts "In 30 years you will be:"
puts age +  30
puts "In 40 years you will be:"
puts age +  40
