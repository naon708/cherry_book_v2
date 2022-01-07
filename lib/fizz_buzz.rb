def fizz_buzz(int)
  if int % 15 == 0
    'Fizz Buzz'
  elsif int % 5 == 0
    'Buzz'
  elsif int % 3 == 0
    'Fizz'
  else
    int.to_s
  end
end
