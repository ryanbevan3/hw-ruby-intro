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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
