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

puts fizz_buzz 1
puts fizz_buzz 2
puts fizz_buzz 3
puts fizz_buzz 4
puts fizz_buzz 5
puts fizz_buzz 6
puts fizz_buzz 15
