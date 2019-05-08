def add(*numbers)
  numbers.reduce(:+)
end

def subtract(*numbers)
  numbers.reduce(:-)
end

def sum(array)
  array.reduce(0, :+)
end

def multiply(*numbers)
  numbers.reduce(:*)  
end

def power(*numbers)
  numbers.reduce(:**)
end

def factorial(number)
  (1..number).reduce(1, :*)
end