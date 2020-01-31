# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.inject(0){|sum,x| sum + x }
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  return arr.sort[-1] + arr.sort[-2]
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length == 0
  return false if arr.length == 1
  a = arr.sort
  l = 0
  r = arr.length - 1
  while l < r
    s = a[l] + a[r]
    if s == n
        return true
    elsif s < n
        l = l + 1
    elsif s > n
        r = r - 1
    end
  end
    return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s == nil
  return true if s == "0"
  return true if /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
    attr_accessor :isbn
    attr_accessor :price
    def initialize(isbn, price)
        @isbn = isbn
        @price = price
        if @isbn.empty? or @price <= 0 
            raise ArgumentError
        end
    end
    
    
    def price_as_string
        "$#{'%.2f' %  @price}"
    end
end
