puts "Enter a number between 0 and 100"
number = gets.chomp.to_i

if number <0
  puts "that is not a positive number."
elsif (number >0) && (number <= 50)
  puts "#{number} is between 0 and 50"
elsif (number > 50) && (number <= 100)
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end

