=begin
 Write a method that takes one integer argument, which may be positive, netgative, or zero.This method returns tru if the number's absolute value is odd. You may assume the argument is integer value. You're not allowed to use #odd? or #even?
=end

def is_odd?(n) 
  n/2 != n.to_f/2
end

