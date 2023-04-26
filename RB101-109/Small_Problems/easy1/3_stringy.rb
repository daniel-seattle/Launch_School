=begin
Write a method that takes one argument, a positie integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.
=end


def stringy(n)
  counter = 0
  output = ''
  until counter==n
    output << ((counter+1)%2).to_s
    counter+=1
  end
  output
end

