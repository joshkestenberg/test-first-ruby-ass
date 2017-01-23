require 'pry'

def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(nums)
  sum = 0
  nums.each do |num|
    sum += num
  end
  return sum
end

def multi(x,y)
  x * y
end

def product(nums)
  product = 1
  nums.each do |num|
    product = product * num
  end
  p product
end

def factorial(num)
  product = 1
  count = 0

  if num == 0
    nums = [0]
  else
    nums = (1..num).to_a
  end

  nums.each do |num|
    product = product * num
  end
  p product
end
