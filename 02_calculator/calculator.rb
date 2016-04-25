def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  total = 0
  array.each do |x|
    total += x
  end
  total
end

def multiply(array)
  total = 1
  array.each do |x|
    total *= x
  end
  total
end

def power(a, b)
  a ** b
end

def factorial(n)
  n == 0 ? 1 : (n * factorial(n-1))
end
