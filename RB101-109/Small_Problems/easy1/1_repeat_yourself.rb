#Create a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.
```
Example:
  repeat('Hello', 3)

Outputs:
  Hello
  Hello
  Hello
```
def repeat (a='',b=0){
  if a=='' || b<1
    put "please enter valid text and an integer greater than 1"
  else
    b.times {put a}
  end
}

repeat('antenna',7)
