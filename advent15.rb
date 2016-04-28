<<<<<<< HEAD
input = File.open('input15','r')
ingredients = []
input.each do |line|
  temp = []
  numbers = line.scan(/\-?\d/)
  numbers.map!{|i| i.to_i}
  temp << line.match(/^\w+/).to_a << numbers
  ingredients << temp.flatten
end

max = 0
for i in (0..100)
  for j in (0..100)
    for k in (0..100)
      for l in (0..100)
        if i + j + k + l == 100
          capacity = i*ingredients[0][1] + j*ingredients[1][1] + k*ingredients[2][1] + l*ingredients[3][1]
          durability = i*ingredients[0][2] + j*ingredients[1][2] + k*ingredients[2][2] + l*ingredients[3][2]
          flavour = i*ingredients[0][3] + j*ingredients[1][3] + k*ingredients[2][3] + l*ingredients[3][3]
          texture = i*ingredients[0][4] + j*ingredients[1][4] + k*ingredients[2][4] + l*ingredients[3][4]
          capacity = 0 if capacity < 0
          durability = 0 if durability < 0
          flavour = 0 if flavour < 0
          texture = 0 if texture < 0
          total = capacity * durability * flavour * texture
          max = total if total > max
        end
      end
    end
  end
end

puts max
=======
input = File.open('input15','r')
ingredients = []
input.each do |line|
  temp = []
  numbers = line.scan(/\-?\d/)
  numbers.map!{|i| i.to_i}
  temp << line.match(/^\w+/).to_a << numbers
  ingredients << temp.flatten
end

max = 0
for i in (0..100)
  for j in (0..100)
    for k in (0..100)
      for l in (0..100)
        if i + j + k + l == 100
          capacity = i*ingredients[0][1] + j*ingredients[1][1] + k*ingredients[2][1] + l*ingredients[3][1]
          durability = i*ingredients[0][2] + j*ingredients[1][2] + k*ingredients[2][2] + l*ingredients[3][2]
          flavour = i*ingredients[0][3] + j*ingredients[1][3] + k*ingredients[2][3] + l*ingredients[3][3]
          texture = i*ingredients[0][4] + j*ingredients[1][4] + k*ingredients[2][4] + l*ingredients[3][4]
          capacity = 0 if capacity < 0
          durability = 0 if durability < 0
          flavour = 0 if flavour < 0
          texture = 0 if texture < 0
          total = capacity * durability * flavour * texture
          max = total if total > max
        end
      end
    end
  end
end

puts max
>>>>>>> 028b25b0cc2dcace94bb9fa47bcd70c73bc1dd1a
