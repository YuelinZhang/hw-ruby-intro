# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  i = 0
  sum = 0
  for i in 0..arr.length-1
    sum += arr[i]
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  end
  len = arr.length
  if len = 0
    return n == 0
  end
  
  i = 0
  j = len-1
  arr.sort!
  while i < j
    if arr[i] + arr[j] == n then
      return true
    elsif arr[i] + arr[j] < n then
      i = i + 1
    else
      j = j - 1
    end
  end
  return false    
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty? then 
    return false
  end
  if (s[0,1]=~/^[aeiou]/ || s[0,1]=~/^[AEIOU]/) then
    return false
  end
  if !(s[0,1]=~/[a-zA-Z]/)
    return false
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if !(s=~/^[01]0*1*/) then
    return false
  end
  s = "0b" + s
  s = Integer(s)
  if s % 4 == 0 then
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn=isbn
    @price=price
  end
  
  def price_as_string
    format("$%.2f", @price)
  end
  
  attr_accessor:isbn
  attr_accessor:price
end
