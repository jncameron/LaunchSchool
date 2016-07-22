
def evaluate_number(number)
  if number <0
    puts "#{number} is not a positive number."
  elsif (number >0) && (number <= 50)
    puts "#{number} is between 0 and 50" 
  elsif (number > 50) && (number <= 100)
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is above 100"
  end
end

evaluate_number(104)
evaluate_number(4)
evaluate_number(54)
evaluate_number(-104)

def evaluate_number_case(number)
  case
  when number < 0
    puts "#{number} is not a positive number."
  when (number >0) && (number <= 50)
    puts "#{number} is between 0 and 50" 
  when (number > 50) && (number <= 100)
    puts "#{number} is between 51 and 100"
  when number > 100
    puts "#{number} is above 100"
  end
end

evaluate_number_case(104)
evaluate_number_case(4)
evaluate_number_case(54)
evaluate_number_case(-104)