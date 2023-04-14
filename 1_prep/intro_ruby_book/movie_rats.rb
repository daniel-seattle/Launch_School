movies = {
  buttermonks: 3,
  strictly_legal: 3.5,
  demolitionists: 3.2
}

movies_ratcount = Hash.new(0)

puts "Whatchawannado, like add, update, display or delete"

choice = gets.chomp.downcase

case choice
  when "add" 
    puts "what's the title of the movie?"
    title = gets.chomp
    
    puts "how would you rate the movie?"
    rating = gets.chomp
    if movies[title.to_sym]== nil
      movies[title.to_sym] = rating.to_i
      movies_ratcount[title.to_sym]+=1
    else
      movies[title.to_sym] = (movies_ratcount[title.to_sym]*movies[title.to_sym] + rating.to_i)/(movies_ratcount[title.to_sym+1)
    end
  when "update"
    puts "Updated"
  when "display"
    puts "Douzo"
  when "delete"
    puts "Yoshi!"
  else
    puts "Wakarimasen!"
end
