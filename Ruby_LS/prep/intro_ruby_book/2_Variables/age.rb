puts "How old are you?(enter on the next line):"

age = gets.chomp.to_i

(1..4).each do |n| 
  puts "In #{n*10} years you will be:"
  puts age + n *10
end

