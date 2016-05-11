def fibonacci(number)
  fibonacci_numbers = [1, 2]
  even_sum = 0
  while fibonacci_numbers[-1] < number
    fibonacci_numbers << (fibonacci_numbers[-1] + fibonacci_numbers[-2])
  end
  fibonacci_numbers.each do |x|
    if x.even?
      even_sum = even_sum + x
    end
  end
  puts even_sum
end

fibonacci(4000000)