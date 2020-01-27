# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  values = 0
  for val in arr
    values += val
  end
  return values
end

def max_2_sum arr
  if arr.size() == 0
    return 0
  elsif arr.size() == 1
    return arr[0]
  else
    larger = -10000
    large = -10000
    for val in arr
      if val > large
        if val > larger
          large = larger
          larger = val
        else
          large = val
        end
      end
    end
  end
  return larger + large
end

def sum_to_n? arr, n
  if arr.size() == 1 || arr.size() == 0
    return false
  end
  for val1 in arr
    for val2 in arr
      if val1 != val2
        if val1 + val2 == n
          return true 
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.size() == 0
    return false
  end
  arr = ['I', 'i', 'A', 'a', 'E', 'e', 'O', 'o', 'U', 'u']
  if !arr.include? s[0]
    if s[0] =~ /[[:alpha:]]/
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  i = 0
  value = 0
  while i < s.length do
    if s[i] != '0' && s[i] != '1'
      return false
    elsif s[i] == '1'
      value += 2^s.length - i - 1
    end
    i+=1
  end
  if value % 3 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.length == 0
      raise ArgumentError.new("ISBN cannot be an empty string")
    end
    if price <= 0
      raise ArgumentError.new("Price must be greater than zero")
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    return "$%.2f" % @price
  end
end
