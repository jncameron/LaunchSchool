#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
new_array = Array(1..10)
new_array.each do |n|
  puts n
end

#Same as above, but only print out values greater than 5.

new_array = Array(1..10)
new_array.each do |n|
  if n > 5
    puts n
  end
end

#Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

odd_array = new_array.select do |n|
  n % 2 != 0
end

p odd_array

#Append "11" to the end of the original array. Prepend "0" to the beginning.

new_array << 11
new_array.unshift(0)
p new_array

#Get rid of "11". And append a "3".

new_array.pop
new_array << 3
p new_array

new_array.uniq!
p new_array