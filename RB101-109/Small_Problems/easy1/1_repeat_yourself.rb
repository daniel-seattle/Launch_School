# Create a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

=begin
Example:
  repeat('Hello', 3)

Outputs:
  Hello
  Hello
  Hello
=end

def repeat(a='', b=0)
  # Ask user for a and b
  puts "Enter a word to be repeated:"
  a = gets.chomp

  puts "Enter the desired number of repetitions:"
  b = gets.chomp.to_i

  # If user input is valid, repeat a b times.
  if a == '' || b < 1
    put "please enter valid text and an integer greater than 1"
  else
    b.times { puts a }
  end
end

repeat('antenna', 7)
