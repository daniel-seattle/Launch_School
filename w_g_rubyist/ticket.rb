# ticket.rb as seen on p. 42 of WGR

ticket = Object.new

def ticket.date
	"1903-01-02"
end
def ticket.venue
	"Town Hall"
end
def ticket.event
	"Author's reading"
end
def ticket.performer
	"Mark Twain"
end
def ticket.seat
	"Second Balcony, row J, seat 12"
end
def ticket.price
	5.50
end

puts "This ticket is for: #{ticket.event}, at #{ticket.venue}. \n" +
"The performer is #{ticket.performer}.\n" + 
"The seat is #{ticket.seat}, " +
"and it costs $#{"%.2f." % ticket.price}"

def ticket.abailability_status
	"sold"
end

def ticket.abailable?
	false
end

if ticket.abailable?
	puts "You're in luck!"
else
	puts "Sorry --that seat has been sold."
end

def ticket.print_details(*x)
	x.each { |detail| puts "This ticket is #{detail}" }
end

ticket.print_details("non-refundable.", "non-transferable.", "is in a non-smoking section.")

