first_array = Array(1..9)
second_array = []
first_array.each do |n|
  second_array << n + 2
end

p first_array
p second_array