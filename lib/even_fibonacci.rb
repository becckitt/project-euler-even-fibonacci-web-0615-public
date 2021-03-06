# Implement your procedural solution here!
# 1,2,3,5,8,13,21,34,55,89...

# #Less than 4 million
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be:
# 1,2,3,5,8,13,21,34,55,89...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def find_fibonaccis(limit)
  fib_array = []
  i = 1
  while i <= limit
    first_num = fib_array[i-1] ||= 1  # 1, 
    second_num = fib_array[i] ||= 1  # 1, 
    result = first_num + second_num
    if result > limit
      break
    end
    fib_array << result
    i += 1
  end
  fib_array
end

def find_even_fibonaccis(limit)
  find_fibonaccis(limit).select do |num|
    if num % 2 == 0 && num < limit
      num 
    end
  end
end

def even_fibonacci_sum(limit)
  even_fibs = find_even_fibonaccis(limit)
  even_fibs.reduce(:+)
end