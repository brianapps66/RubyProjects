# Calculates Fibonacci numbers recursively

def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  fib(n - 1) + fib(n - 2)
end

p fib(ARGV[0].to_i)
