# insert_numbers.rb

numbers = []

loop do
	puts 'Enter any number:'
	numbers << gets.chomp.to_i
	print numbers
	break if numbers.size== 5
end
	
