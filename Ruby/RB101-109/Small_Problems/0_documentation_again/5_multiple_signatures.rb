# What do each of these puts statements output?

a = %w(a b c d e)
#puts a.fetch(7)
# throws IndexError
puts a.fetch(7, 'beats me')
# puts =>"beats me"
puts a.fetch(7) { |index| index**2 }
# puts =>49
