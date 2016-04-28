# Checks whether a string is a palindrome or not.
# Returns a boolean value.
# Argument is provided through the command line.

def palindrome(s)
  result = true
  len = s.length
  s.delete! s[(len - 1) / 2] if len % 2 != 0
  len = s.length
  (0..(len / 2) - 1).each do |i|
    s[i] == s[len - 1 - i] ? next : result = false
  end
  result
end

puts(palindrome(ARGV[0].downcase))
