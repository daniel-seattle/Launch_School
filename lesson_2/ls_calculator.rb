# ask the user for two numbers
# ask for the operation
# perform the operation
# display the result

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '+'
    'Adding'
  when '-'
    'Subtracting'
  when '*'
    'Multiplying'
  when '/'
    'Dividing'
  end
end

prompt("Hi! ...what should I call you?")
name = ''
loop do
  name = gets.chomp

  if name.empty?()
    prompt("Please enter a name:")
  else
    break
  end
end

prompt("Welcome, #{name}!")

loop do # main loop
  number1 = ''
  prompt("Please enter the first number:")
  loop do
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("please enter a valid number")
    end
  end

  number2 = ''
  prompt("What's gonna be your 2nd number?:")
  loop do
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("please enter valid number")
    end
  end

  operator = ''
  operator_prompt = <<-MSG
    What operation # would you like to perform? 
    Think ->  result = #{number1} # #{number2}).
    +  --- to add
    -  --- to subtract
    *  --- to multiply
    /  --- to divide
  MSG

  prompt(operator_prompt)

  loop do
    operator = Kernel.gets().chomp()

    if %w(+ - * /).include?(operator)
      break
    else
      prompt("Must choose + - *, or /")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when "+"
             number1.to_f + number2.to_f
           when "-"
             number1.to_f - number2.to_f
           when "*"
             number1.to_f * number2.to_f
           when "/"
             number1.to_f / number2.to_f
           end

  if result == result.to_i
    result = result.to_i
  end

  prompt "your result is #{result}"

  prompt "want to calculate again? (press Y to calculate again)"

  answer = Kernel.gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using our calculator. Sayo-onara!")
