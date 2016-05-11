def prime?(number)
  factors = []
  counter = 1
  while counter <= number
    if number % counter == 0
      factors << counter
    end
    counter += 1
  end
  if factors == [1, number]
    true
  else
    false
  end
end

def prime_factor(number)
  factors = []
  prime_factors = []
  counter = 1
  while counter <= (number/2)
    if number % counter == 0
      factors << counter
    end
    counter += 1
  end
  factors.each do |x|
    if prime?(x) == true
      prime_factors << x
    end
  end
  puts prime_factors[-1]
end

prime_factor(600851475)