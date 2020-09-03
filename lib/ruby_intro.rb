# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!.reverse!
    arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0..arr.length - 1
    k = i + 1
    for j in k..arr.length - 1
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s =~ /^[^aeiou\W]/i
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty? or s.length == 0
    return false
  elsif s.length == 1 and s[-1] == '0'
    return true
  end

  s.split("").each do |ch|
    if ch != '1' and ch != '0'
      return false
    end
  end

  if s[-2, 2] == '00'
    return true
  end

  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price

def initialize(isbn, price)
  raise ArgumentError.new("isbn cannot be empty string") if isbn.empty?
  raise ArgumentError.new("price cannot be negative or zero") if price <= 0

  @isbn = isbn
  @price = price
end

def price_as_string
  '$' + sprintf("%.2f", price)
end
end
