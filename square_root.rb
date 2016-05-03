# Approximate implementation of square root function

def square_root(i)
  def test(x, y = 1.0)
    close(x / y, y) ? y : test(x, new_try(x, y))
  end
  def close(a, b)
    (a - b).abs < 0.0001
  end
  def new_try(c, d)
    (d + c / d) / 2
  end
  test(i)
end

p square_root(ARGV[0].to_i)
