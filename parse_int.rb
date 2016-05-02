# Returns the int value of a string

def parse_int(s)
  max = s.length
  result = 0
  j = 0
  max.downto(1).each do |i|
    d = s[j].to_i(32)
    result += d * (10 ** (i-1))
    j += 1
  end
  return result
end

p parse_int(ARGV[0])
