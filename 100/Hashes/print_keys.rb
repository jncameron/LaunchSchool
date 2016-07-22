animal_size = { elephant: "very big", horse: "big", dog: "medium", cat: "small", mouse: "very small"}

animal_size.each_key {|k| puts k}
animal_size.each_value {|v| puts v}
animal_size.each {|k,v| puts "A #{k} is #{v}"}
