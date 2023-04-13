=begin
The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:

a = [1, 4, 8, 11, 15, 19]

How would you search this Array to find the first element whose value exceeds 8?

=end

a = [1, 4, 8, 11, 15, 19]

#I want to use the mode that returns a number, i.e. find-minimum mode.

puts a.bsearch{|x| x> 8}
