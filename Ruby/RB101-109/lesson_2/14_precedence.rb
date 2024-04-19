# Show the difference in prcedence between method call and do end block vs method call and {} block

puts "Provde comma-separated integers"
array = []
  gets.chomp.split(/,/).each do |n|
    array << n.to_i
  end

puts ""

p "array = #{array}"  

puts ""
puts "Hit ENTER to see the first example:"
a = gets
puts ""

puts "p array.map do |num|"
puts "  num + 1"
puts "end"


p array.map do |num|
  num + 1
end


puts ""
puts "Hit ENTER to see the second example:"
b = gets
puts ""

puts "p array.map { |num| num + 1 }"

puts ""

p array.map { |num| num + 1 }
