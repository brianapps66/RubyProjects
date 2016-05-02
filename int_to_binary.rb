# Returns the binary form of an int

def int_to_binary(i)
  return "Not an integer" if i =~ /[^0-9]/
  return i.to_i.to_s(2)
end

p int_to_binary(ARGV[0])
