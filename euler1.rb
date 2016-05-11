def multiples(number)
  array = []
  counter = 0
  sum = 0
  until counter == number
    if counter % 3 == 0
      array << counter
    elsif counter % 5 == 0
      array << counter
    end
    counter += 1
  end
  array.each do |x|
    sum = sum + x
  end
  puts sum
end

multiples(1000)