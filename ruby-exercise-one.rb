arr = [1,3,5,7,9,11]
number = 3
if arr.include? number 
  puts "this number is in the array"
else
  puts "this number is not in the array"
end

num = 89
case num
when 0..50
  puts "this is between 0 - 50"
when 51..100
  puts "this is between 51 - 100"
else
  puts "this is greater then 100"
end

word = gets.chomp
while word != "STOP"
  puts "This will not stop unless you type STOP"
  print "Type in your word: "
  word = gets.chomp
end

arr = [6,3,1,8,4,2,10,65,102]
arr2 = Array.new

for num in arr
  if num % 2 == 0
    arr2.push(num)
  end
end

print arr2
