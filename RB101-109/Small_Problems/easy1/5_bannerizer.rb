# Write a method that will take a short line of text, and print it within a box.

def print_in_box(message='Your message here!')
  border = ''
  space = ''
  message.length.times do
    border << '-'
    space << ' '
  end
  puts '+-' + border + '-+'
  puts '| ' + space + ' |'
  puts '| ' + message + ' |'
  puts '| ' + space + ' |'
  puts '+-' + border + '-+'
end
