
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_name?(input)
  if input.empty?
    return false
  else
    return true
  end
end

def valid_number?(num)
  /\d/.match(num) && /^\d*\.?\d*$/.match(num)
end

name = ''
prompt("Welcome to the Mortgage Calculator. Please enter your name:")
name = gets().chomp
loop do
  loop do
    if valid_name?(name)
      break
    else
      prompt("Please enter your name")
      name = gets().chomp
    end
  end
  prompt("Hi #{name}. Please enter the loan amount")
  loan_amount = ''
  loop do
    loan_amount = gets().chomp
    if valid_number?(loan_amount)
      break
    else prompt("Please enter a valid number")
    end
  end
  prompt("Please enter the loan interest rate (for example 4.5 = 4.5%)")
  annual_interest_rate = ''
  loop do
    annual_interest_rate = gets().chomp
    if valid_number?(annual_interest_rate)
      break
    else prompt("Please enter a valid interest rate")
    end
  end

  prompt("Please enter the loan duration in years")
  loan_duration_years = ''
  loop do
    loan_duration_years = gets().chomp
    if valid_number?(loan_duration_years)
      break
    else prompt("Please enter a valid loan duration in years")
    end
  end
  loan_duration_years = loan_duration_years.to_i
  loan_amount = loan_amount.to_f
  annual_interest_rate = annual_interest_rate.to_f
  loan_duration_months = loan_duration_years * 12
  monthly_interest_rate = annual_interest_rate / 12 / 100
  monthly_payment = (loan_amount * (monthly_interest_rate * \
                    (1 + monthly_interest_rate)**loan_duration_months)) / \
                    ((1 + monthly_interest_rate)**loan_duration_months - 1)
  total_amount = monthly_payment * loan_duration_months
  interest_amount = total_amount - loan_amount
  results = <<-ACT
  Okay, #{name}.
  On a loan of $#{loan_amount.round(2)} over #{loan_duration_years} years,
  at an annual interest rate of #{annual_interest_rate.round(2)}%,
  your monthly repayments would be $#{monthly_payment.round(2)}.
  The total you'll have to pay back is $#{total_amount.round(2)}, meaning
  you'll pay $#{interest_amount.round(2)} in interest.
  ACT
  prompt(results)
  prompt("Would you like to make another calculation, #{name}? \n"\
          " Enter 'Y' for yes or any other key to quit.'")
  continue = gets().chomp
  break if continue.downcase != 'y'
end
