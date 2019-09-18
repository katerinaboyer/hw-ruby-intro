# When done, submit this entire file to the autograder.

# Part 1

# iterate over each element and add to sum var
def sum arr
  sum = 0
    arr.each do |i|
      sum = sum + i
    end
  return sum
end

# sort array descending, then add first two elements
def max_2_sum arr
  sum = 0
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  sorted_arr = arr.sort
  maxa = sorted_arr.pop
  maxb = sorted_arr.pop
  sum = maxa+ maxb
  return sum
end


def sum_to_n? arr, n
  hash = Hash.new(0)
  arr.each do |i|
    if hash.key? i
      return true
    else
      hash[n-i] = i
    end
  end
  return false
end

# Part 2

def hello(name)
  greeting = "Hello, " + name
  return greeting
end

def starts_with_consonant? s
  if s == ""
    return false
  end
  if /^[b-df-hj-np-tv-xz]/i.match(s)
    return true
  else
    return false
  end
end

# binary multiple of 4 ends with 00
def binary_multiple_of_4? s
  if s == "0"
    return true
  end
  if /^[01]*(00)$/.match(s)
      return true
  else
      return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end
end
