=begin
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.
=end

def triangle(n)
  counter = 0
  until counter == n+1
    line ="#{' ' * (n-counter)}"+"#{'*' * counter}"
    puts line
    counter += 1
  end
end

