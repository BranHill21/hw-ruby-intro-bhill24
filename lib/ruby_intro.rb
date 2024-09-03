# frozen_string_literal: true

# Part 1

def sum(arr)
  # If the array is empty return 0
  if arr.empty?
    0
  else # If it has items then remove nil and add each item together
    arr.compact.inject(:+) 
  end
end

def max_2_sum(arr)
  # If array is empty return 0
  if arr.empty?
    0
  elsif arr.length < 2 # If the array only has 1 item then return that item
    arr[0]
  else # Sort the array desc and return the top 2 items
    sorted_arr = arr.sort { |a, b| b <=> a }
    sum([sorted_arr[0], sorted_arr[1]])
  end
end

def sum_to_n?(arr, number)
  # If the array has less than 2 numbers then return false
  if arr.length < 2
    false
  else # Loop through the array comparing each number to another to see if their sum is equal to number
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
  # Return Hello, + provided name
  "Hello, " + name
end

def starts_with_consonant?(string)
  # Check if the first item in chars is a character and the it is NOT aeiou
  if string.chars[0] =~ /(?=[a-zA-Z])(?=[^aeiouAEIOU])/
    true
  else
    false
  end
end

def binary_multiple_of_4?(string)
  # If the string isnt 1s and 0s return false
  return false unless string.match?(/\A[01]+\z/)

  # If the string ends in 00s or is only 0 then return true
  return string.end_with?('00') || string == '0'
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
