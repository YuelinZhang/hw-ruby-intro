# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce 0, :+
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return true if n == 0
  else
    arr.combination(2).to_a.each do |pair|
      return true if sum(pair) == total
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
