def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(a)
  case a
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to calculator! Your name?")
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("cmon man")
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  number1 = ''
  loop do
    prompt("What is the first number")
    number1 = Kernel.gets().chomp().to_i()
    break if valid_number?(number1)
    prompt("Invalid. please enter a number")
  end

  number2 = ''
  loop do
    prompt("What is the second number")
    number2 = Kernel.gets().chomp().to_i()
    break if valid_number?(number2)
    prompt("Invalid. please enter a number")
  end

  operator_prompt = <<-MSG
    What operation?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG


  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    break if %w(1 2 3 4).include?(operator)

    prompt("Choose  1 2 3 or 4!!!!")
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
    when '1'
      number1 + number2
    when '2'
      number1 - number2
    when '3'
      number1 * number2
    when '4'
      number1.to_f() / number2.to_f()
    end

  prompt("The result is #{result}")

  prompt("DO you want to do it again? type Y to do it again")
  answer = Kernel.gets().chomp().downcase()
  break unless answer == 'y'
end

prompt("Goodbye")
