a = Array.new

(1..10).each do |n|
	a << n 
end


a.each do |n|
	if n>5
		print n
	end
end

a.each {|number| puts number if number > 5}

