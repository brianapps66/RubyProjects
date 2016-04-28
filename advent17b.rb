<<<<<<< HEAD
input = File.foreach('input17').map{|line| line.to_i}

target = 150

result = input.length.downto(1).flat_map do |i|
  input.combination(i).to_a
end.select do |j|
  j.inject(:+) == target
end

def shortest_element(a)
  min = 100    #arbitrary large integer
  a.each do |i|
    min = i.length if i.length < min
  end
  return min
end

def find_element_of_size(a,x)
  count = 0
  a.each do |i|
    count += 1 if i.length == x
  end
  return count
end

puts find_element_of_size(result,shortest_element(result))
=======
input = File.foreach('input17').map{|line| line.to_i}

target = 150

result = input.length.downto(1).flat_map do |i|
  input.combination(i).to_a
end.select do |j|
  j.inject(:+) == target
end

def shortest_element(a)
  min = 100    #arbitrary large integer
  a.each do |i|
    min = i.length if i.length < min
  end
  return min
end

def find_element_of_size(a,x)
  count = 0
  a.each do |i|
    count += 1 if i.length == x
  end
  return count
end

puts find_element_of_size(result,shortest_element(result))
>>>>>>> 028b25b0cc2dcace94bb9fa47bcd70c73bc1dd1a
