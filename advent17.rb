<<<<<<< HEAD
input = File.foreach('input17').map{|line| line.to_i}

target = 150

result = input.length.downto(1).flat_map do |i|
  input.combination(i).to_a
end.select do |j|
  j.inject(:+) == target
end

p result.length
=======
input = File.foreach('input17').map{|line| line.to_i}

target = 150

result = input.length.downto(1).flat_map do |i|
  input.combination(i).to_a
end.select do |j|
  j.inject(:+) == target
end

p result.length
>>>>>>> 028b25b0cc2dcace94bb9fa47bcd70c73bc1dd1a
