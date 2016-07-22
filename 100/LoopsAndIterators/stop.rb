
continue = ""
while continue != "STOP" do
  puts "How are you feeling today?"
  answer = gets.chomp
  puts "Oh, are you feeling "+ answer + "? Should I ask you again?"
  continue = gets.chomp
end
