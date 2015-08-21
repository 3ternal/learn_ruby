def add (num1, num2)
  num1 + num2
end

def subtract (num1, num2)
  num1 - num2
end

def sum(array)
  total = 0
  for number in array do
    total += number
  end
  return total
end

def multiply(array)
  return array.inject(:*)
end

def power(num1, num2)
  num1 ** num2
end
