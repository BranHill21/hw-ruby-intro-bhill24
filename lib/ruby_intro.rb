# frozen_string_literal: true

# Part 1

def sum(arr)
  if arr.empty?
    0
  else
    arr.compact.inject(:+) 
  end
end

def max_2_sum(arr)
  if arr.empty?
    0
  elsif arr.length < 2
    arr[0]
  else
    sorted_arr = arr.sort { |a, b| b <=> a }
    sum([sorted_arr[0], sorted_arr[1]])
  end
end

def sum_to_n?(arr, number)
  if arr.length < 2
    false
  else
    n = arr.length - 1
    n.times do |i|
      for j in (i + 1)..n
        if sum([arr[i], arr[j]]) == number
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
