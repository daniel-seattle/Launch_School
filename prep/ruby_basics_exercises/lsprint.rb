# lsprint.rb

loop do
	puts "How many output lines do you want? Enter a number >=3:"
	count = gets.chomp.to_i
	if count >=3
		count.times {puts "Launch School is the best!"}
		break
	end
	puts "Nah, that's not enough lines."
end
