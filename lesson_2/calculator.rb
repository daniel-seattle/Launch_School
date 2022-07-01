# ask the user for two numbers
# ask for the operation
# perform the operation (BONUS: add loop for invalid operation)
# display the result

Kernel.puts("Welcome")

Kernel.puts( "What's the number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

loop do
  
  Kernel.puts("What operation # would you like to perform? (result = #{number1} # #{number2}).  Input +, -, * or / below")

  operation = Kernel.gets().chomp()

  if operation == "+"
    Kernel.puts("Your result is #{number1.to_f + number2.to_f}")
    break
  elsif operation == "-"
    Kernel.puts("Your result is #{number1.to_f - number2.to_f}")
    break
  elsif operation == "*"
    Kernel.puts("Your result is #{number1.to_f * number2.to_f}")
    break
  elsif operation == "/"
    Kernel.puts("Your result is #{number1.to_f / number2.to_f}")
    break
  else
    Kernel.puts("Invalid operation sign...")
  end
  
 end