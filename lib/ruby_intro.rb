# When donesubmit this entire file to the autograder.

# Part 1

def sum arr
  return 0  if arr.empty?
   arr.inject(:+)
 
end

def max_2_sum arr
  arr=arr.sort.last(2)
  sum(arr)
end

def sum_to_n? arr, n
arr.combination(2).each do |combi|
  return true if combi.inject(:+) == n
end
false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s == ''
  if s.downcase.index(/[qwrtpsdfghjklzxcvbnm]/) == 0
    true
  else
    false
  end
end

def binary_multiple_of_4? s
 s.length > 0 && s.match(/^[0|1]*$/) ?  s.to_i(2)%4 ==0 : false
end
    


# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.eql?("") or price <= 0
      raise ArgumentError
    end
    @isbn =isbn
    @price = price
  end
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
      
end
