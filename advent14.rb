input = File.open('input14','r')

reindeer = []
input.each do |x|
  temp = []
  temp << x.match(/^\w+/).to_a
  numbers = x.scan(/\d+/)
  numbers.map!{|i| i.to_i}
  temp << numbers
  reindeer << temp.flatten
end

max = 0
reindeer.each do |x|
  speed, seconds, rest = x[1], x[2], x[3]
  distance_cycle = speed * seconds
  cycle = seconds + rest
  count,distance = 0,0
  time = 2503
    full_times = (time/cycle).floor
    distance += full_times*distance_cycle
    count += full_times*cycle
    remainder = time - count
    if remainder <= seconds
      distance += remainder * speed
    elsif remainder < cycle
      distance += distance_cycle
    end
  max = distance if distance > max
end

puts max
