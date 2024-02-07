# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum(arr.max(2))
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  combo_array = arr.combination(2).map { |a, b| a + b }
  return false if arr.length < 2

  combo_array.include?(number)
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, ' + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  string.match?(/^[^aeiou].*/i) and string.match?(/^\w.*/i)
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  string.match?(/\A[01]+\z/) and string.to_i % 4 == 0
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE

  attr_reader :isbn, :price
  def isbn=(new_isbn)
    raise ArgumentError, 'empty ISBN' if new_isbn.empty?
    @isbn = new_isbn
  end

  def price=(new_price)
    raise ArgumentError, 'price is less than or equal to 0' if new_price <= 0
    @price = new_price
  end

  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  def price_as_string
    '$' + '%.2f' % price
  end
end
