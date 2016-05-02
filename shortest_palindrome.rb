# Converts a string to a palindrome by adding characters to the start of the string

def shortest_palindrome(s)
  return "" if s.nil? || s.length == 0

  max = 0
  (0...s.length).each do |i|
    #Odd length
    x = i - 1
    y = i + 1
    l = 1
    while (x >= 0 && y < s.length && s[x] == s[y]) do
      l += 2
      x -= 1
      y += 1
    end
    max = l if (x == -1 && l > max)

    #Even length
    x = i
    y = i + 1
    l = 0
    while (x >= 0 && y < s.length && s[x] == s[y]) do
      l += 2
      x -= 1
      y += 1
    end
    max = l if (x == -1 && l > max)
  end
  addition = ""
  p max
  (s.length-1).downto(max) do |i|
    addition << s[i]
  end
  return addition << s
end

p shortest_palindrome(ARGV[0])
