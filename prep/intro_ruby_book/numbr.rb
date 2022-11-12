def fifty()
number = gets.chomp
  if number > 0
    if number < 50
      puts "it's between 0 n 60, sorry, 50"
    elsif number < 100
      puts "it's between 51 and 100"
    else
      puts "handicapped number"
    end
  else 
    puts "illegitimate number!"
  end
end
