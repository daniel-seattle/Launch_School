def alphabetize (arr, rev = false)
  arr.sort!
  if rev == true 
    arr.reverse!
  else
    return arr
  end
end


numbers = [1,3,2,17,6]

puts alphabetize(numbers, true)
