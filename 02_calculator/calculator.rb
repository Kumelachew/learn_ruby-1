# write your code here
def add(first_number, second_number)
  first_number + second_number
end

def subtract(first_number, second_number)
  first_number - second_number
end

def sum(input)
  if input.to_a.empty? == true
    result = 0
  else
    input.each do |value|
      result = result.to_i + value.to_i
    end
  end
  result.to_i
end

def multiply(input)
  if input.empty? == true
    result = 0
  else
    result = input.inject(:*)
  end
  result
end

def power(number, power)
  number ** power
end
