# Checks whether a number is an int or a double

def int_or_double(s)
  raise TypeError, "You must provide a string with digits" if not s =~ /\d+(\.\d+)?/
  s.include?(".") ? puts("double") : puts("int")
end

int_or_double(ARGV[0])
