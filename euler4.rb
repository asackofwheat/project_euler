def palindrome?(number)
  number_array = number.to_s.chars
  if number_array.length == 5
    if number_array[0] == number_array[4] && number_array[1] == number_array[3]
      true
    else
      false
    end
  elsif number_array.length == 6
    if number_array[0] == number_array[5] && number_array[1] == number_array[4] && number_array[2] == number_array[3]
      true
    else
      false
    end
  end
end

def largest_palindrome
  counter1 = 999
  palindrome_array = []
  while counter1 > 1
    counter2 = 999
    while counter2 > 1
      if palindrome?(counter1 * counter2) == true
        palindrome_array << (counter1 * counter2)
      end
      counter2 = counter2 - 1
    end
    counter1 = counter1 - 1
  end
  puts palindrome_array.sort
  puts palindrome_array.sort[-1]
end

largest_palindrome