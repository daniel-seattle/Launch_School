pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2..3]

my_pets.pop

my_pets << pets[1]

my_pets.each do |n|
  puts "I have a pet #{n}!"
end