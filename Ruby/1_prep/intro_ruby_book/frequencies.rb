puts "Please type out som text here: "
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new (0)

words.each do |word|
  frequencies[word] +=1
end

puts frequencies

frequencies = frequencies.sort_by {|ws,count| count}

frequencies.reverse!

puts frequencies

frequencies


frequencies.each {|wrd, cnt| puts wrd + " " + cnt.to_s}
