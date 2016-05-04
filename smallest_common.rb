# Given three sorted arrays, returns the common numbers

def smallest_common(a, b, c)
  i, j, k = 0, 0, 0
  result = []
  while (i < a.length && j < b.length && k < c.length) do
    if (a[i] == b[j] && b[j] == c[k])
      result << a[i]
      i += 1
      j += 1
      k += 1
    else
      smallest = get_smallest(a[i], b[j], c[k])
      i += 1 if a[i] == smallest
      j += 1 if b[j] == smallest
      k += 1 if c[k] == smallest
    end
  end
  result
end

def get_smallest(x, y, z)
  if (x <=> y) == -1
    ((x <=> z) == -1) ? (return x) : (return z)
  else
    ((y <=> z) == -1) ? (return y) : (return z)
  end
end

array1 = [1,2,3,4,5,6,7,8,9,10]
array2 = [1,3,5,6,7,8,12]
array3 = [2,3,4,5,8,9]

p smallest_common(array1, array2, array3)
