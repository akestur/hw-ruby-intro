# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  total = 0
  arr.each{|a| total += a}
  return total
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  arr.sort!
  return arr[arr.length - 1] + arr[arr.length - 2]
end

def sum_to_n? arr, n
  if arr.length == 0
    return false
  end
  i = 0
  while i < arr.length - 1
    j = 1
    while j < arr.length
      if i == j
        j += 1
        next
      end
      if arr[i] + arr[j] == n
        return true
      end
      j += 1
    end
    i += 1
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  new_s = s.downcase
  if ['a', 'e', 'i', 'o', 'u'].include? new_s[0]
    return false
  end
  if s.length == 0
    return false
  end
  if ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'].include? new_s[0]
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  if s.count("a-zA-Z") > 0
    return false
  end
  total = 0
  i = 1
  counter = 0
  while i <= s.length
    curr_char = s[s.length - i]
    curr_int = curr_char.to_i
    total += curr_int * (10 ** counter)
    counter += 1
    i += 1
  end
  if total % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(number)
    @isbn = number
  end

  def price
    @price
  end

  def price=(number)
    @price = number
  end

  def price_as_string
    out = "$#{price}"
    chars = out.split('')
    toggle = false
    counter = -1
    chars.each{|c|
      if c == '.'
        toggle = true
      end
      if toggle == true
        counter += 1
      end
    }
    if counter == -1
      return out + '.00'
    elsif counter == 0
      return out + '00'
    elsif counter == 1
      return out + '0'
    else counter == 2
      return out
    end
  end


end
