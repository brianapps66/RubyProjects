# Calculates Fibonacci numbers with an optimised recursive method

$dict = {}
def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  return $dict[n] if not $dict[n].nil?
  result = fib(n - 1) + fib(n - 2)
  $dict[n] = result
end

p fib(ARGV[0].to_i)
