# Multiply two numbers without using the * operator

def multiply(x, y, total = 0)
  return total if y == 0
  x, y = -x, -y if y < 0
  multiply(x, y - 1, total + x)
end

p multiply(ARGV[0].to_i, ARGV[1].to_i)
