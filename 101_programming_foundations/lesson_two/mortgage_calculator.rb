def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome to the mortgage calculator")

name = ''
loop do
  prompt("Your name?")
  name = Kernel.gets().chomp()
  break unless name.empty?()
end

prompt("Welcome #{name}")
prompt("=====")


loop do
  loan_amount = ''
  loop do
    prompt("Enter loan amount:")
    loan_amount = Kernel.gets().chomp().to_i()
    if loan_amount <= 0
      prompt("Please enter a valid amount")
    else
      break
    end
  end

  monthly_interest_rate = ''
  loop do
    prompt("Enter Annual Percentage Rate")
    monthly_interest_rate = Kernel.gets().chomp().to_f() / 12
    if monthly_interest_rate <= 0
      prompt("Please enter a valid rate")
    else
      break
    end
  end

  loan_duration_in_months = ''
  loop do
    prompt("Enter loan duration in months")
    loan_duration_in_months = Kernel.gets().chomp().to_i()
    if loan_duration_in_months <= 0
      prompt("Please enter a valid duration in months")
    else
      break
    end
  end

  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))

  prompt("Your monthly payment based on your inputs will be: #{monthly_payment}")

  prompt("Again? Press 'Y' to use this again")
  answer = Kernel.gets().chomp().downcase()
  break unless answer == 'y'
end
