input = File.open('input14','r')

reindeer = []
input.each do |x|
  temp = []
  temp << x.match(/^\w+/).to_a
  numbers = x.scan(/\d+/)
  numbers.map!{|i| i.to_i}
  temp << numbers
  temp << [0,0]
  reindeer << temp.flatten
end

(1..2503).each do |i|
  distances = []
  reindeer.each do |x|
    speed, seconds, rest = x[1], x[2], x[3]
    if i % (seconds+rest) <= seconds && i % (seconds+rest) != 0
      x[4] += speed
    end
    distances << x[4]
  end
  max = distances.max
  reindeer.each do |x|
    if x.include?max
      x[5] +=1
    end
  end
end

scores = []
reindeer.each do |x|
  scores << x[5]
end
puts scores.max
