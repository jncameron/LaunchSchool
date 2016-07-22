require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  /\d/.match(num) && /^\d*\.?\d*$/.match(num)
end

prompt(MESSAGES['welcome'])
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

loop do
  first = nil
  second = nil
  operation = ""

  loop do
    prompt(MESSAGES['first_num'])
    first = Kernel.gets().chomp

    if valid_number?(first)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  loop do
    prompt(MESSAGES['second_num'])
    second = Kernel.gets().chomp

    if valid_number?(second)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  operator_prompt = <<-ACT
    What operation do you want?
    + for add
    - for subtract
    * for multiply
    / for divide
  ACT
  prompt(operator_prompt)
  loop do
    operation = Kernel.gets().chomp()
    if %w(+ - * /).include?(operation)
      break
    else
      prompt("You must choose '+', '-', '*' or '/'")
    end
  end

  result = case operation
           when '+'
             first.to_f + second.to_f
           when '-'
             first.to_f - second.to_f
           when '*'
             first.to_f * second.to_f
           when '/'
             first.to_f / second.to_f
           end

  if operation == '+'
    prompt("Adding #{first} and #{second}...")
  elsif operation == '-'
    prompt("Subtracting #{second} from #{first}...")
  elsif operation == '*'
    prompt("Multiplying #{first} by #{second}...")
  elsif operation == '/'
    prompt("Dividing #{first} by #{second}...")
  end
  prompt(MESSAGES['result'])

  prompt(MESSAGES['another_operation'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt(MESSAGES['thanks'])
