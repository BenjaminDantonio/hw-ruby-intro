# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length() == 0
	return 0
  end
  arr.reduce(:+)
end

def max_2_sum arr
  if arr.length() == 0
	return 0
  end
  arr.max(2).reduce(:+)
  
end

def sum_to_n? arr, n
  if arr.combination(2).find{|x,y| x+y==n} != nil
	return true
  end
  false
end

# Part 2

def hello(name)
  "Hello, ".concat(name)
end

def starts_with_consonant? s
  if s.scan(/\A[a-z]/i) != [] && s.scan(/\A[^aeiou]/i) != []
    return true
  end
  false
end

def binary_multiple_of_4? s
  #s = s.scan(/\S/).join(', ')
  if s.length() == 0 || s.scan(/\D/) != [] || s.to_i(2) % 4 != 0
    return false
  end
  true
end

# Part 3

class BookInStock

  def initialize(isbn, price)
    if isbn.length() == 0
	  raise ArgumentError, 'ISBN must not be empty'
	end
	if price <= 0
	  raise ArgumentError, 'Price must not be less than or equal to 0'
	end
	@isbn = isbn
	@price = price
  end
  
  def isbn
	@isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price
	@price
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    price = @price
	sprintf("$%0.2f", price)
  end
end
