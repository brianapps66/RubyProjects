# Calculates Fibonacci numbers iteratively

def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  first, second, result = 0, 1, 0
  (2..n).each do
    result = first + second
    first = second
    second = result
  end
  result
end

p fib(ARGV[0].to_i)
