# Returns the int representation of a binary number

def binary_to_int(s)
  return "Not a binary number" if s =~ /[^01]/
  return s.to_i(2)
end

p binary_to_int(ARGV[0])
