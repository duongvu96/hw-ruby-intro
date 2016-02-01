# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if (arr.length == 0)
  
  sum = 0
  arr.each do |x|
    sum += x
  end
  
  return sum
end

def max_2_sum arr
  if (arr.length == 0)
    return 0
  elsif (arr.length == 1)
    return arr[0]
  end
  
  first_max = arr.max
  first_max_index = arr.index(first_max)
  arr.delete_at(first_max_index)
  second_max = arr.max
  
  return first_max + second_max
    
end

def sum_to_n? arr, n
  return false if (arr.length == 0)
  
  for i in 0...arr.length
    remainder = n - arr[i]
    for j in (i+1)...arr.length
      if (arr[j] == remainder)
        return true
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  regex_nonletter = /\A[^a-zA-Z].*/i
  return false if (s =~ regex_nonletter)
  
  regex_letter = /\A[^aeiou].*/i
  return s =~ regex_letter
end

def binary_multiple_of_4? s
  regex_binary = /^[01]+$/
  return false if (s !~ regex_binary)
  
  num = s.to_i(10)
  return num % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :price
  attr_accessor :isbn
  
  def initialize(isbn, price)
    raise ArgumentError if (isbn == "" || price <= 0)
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    formatted_price = sprintf('%.2f', @price)
    return "$#{formatted_price}"
  end
end
