# Checks if the characters in a string are unique

def unique_characters(s)
  s.split("") == s.split("").uniq ? (return true) : (return false)
end

p unique_characters(ARGV[0])
