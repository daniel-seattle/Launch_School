=begin
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.
=end

def calculate_bonus(salary,decision)
  if decision
    bonus=salary/2
  else
    bonus=0
  end
  bonus
end  
  
