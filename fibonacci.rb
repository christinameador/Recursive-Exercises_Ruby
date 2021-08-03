# Gives an array of Fibonacci numbers n long (zero indexed)
def fibs(number, result = [])
  return [0] if number.zero?

  return [0, 1] if number == 1

  result = [0, 1]
  (number - 1).times do
    result << result[-1] + result[-2]
  end
  result
end

# Gives an array of Fibonacci numbers n long (zero indexed) using recursion
def fibs_rec(number)
  return [0] if number.zero?

  return [0, 1] if number == 1

  result = fibs_rec(number - 1)
  result << result[-1] + result[-2]
end

# Gives the Fibonacci number in a given position n using recursion
def fib(number)
  case number
  when 0
    0
  when 1
    1
  else
    fib(number - 1) + fib(number - 2)
  end
end
