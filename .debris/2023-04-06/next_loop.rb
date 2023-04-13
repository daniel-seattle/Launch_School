# next_loop.rb

i = 0
loop do
	i = i + 2
	if i == 4 || i.to_f/4 == 5.0
		next
	end
	puts i
	if i == 28
		break
	end
end
