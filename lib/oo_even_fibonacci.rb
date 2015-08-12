# Implement your object-oriented solution here!

class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def find_fibonaccis
    fib_array = []
    i = 1
    while i <= @limit
      first_num = fib_array[i-1] ||= 1 
      second_num =  fib_array[i] ||= 1  
      result = first_num + second_num
      if result > @limit
        break
      end
      fib_array << result
      i += 1
    end
    fib_array
  end


  def find_evens
    find_fibonaccis.select do |num|
      if num % 2 == 0 && num < @limit
        num 
      end
    end
  end

  def sum
    find_evens.reduce(:+)
  end
end
