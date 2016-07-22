animal_size = { elephant: "very big", horse: "big", dog: "medium", cat: "small", mouse: "very small"}

if animal_size.has_value?("very big")
  puts "yes"
else
  puts "no"
end