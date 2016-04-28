<<<<<<< HEAD
input = File.open('input16','r')

clues = {children: 3,
          cats: 7,
          samoyeds: 2,
          pomeranians: 3,
          akitas: 0,
          vizslas: 0,
          goldfish: 5,
          trees: 3,
          cars: 2,
          perfumes: 1}

input.each do |line|
  info = line.match(/(\w+): (\d+), (\w+): (\d+), (\w+): (\d+)/).captures
    if clues[info[0].to_sym] == info[1].to_i
        if clues[info[2].to_sym] == info[3].to_i
            if clues[info[4].to_sym] == info[5].to_i
              result = line.match(/(\d+):/).captures
              puts result
            end
        end
    end
end
=======
input = File.open('input16','r')

clues = {children: 3,
          cats: 7,
          samoyeds: 2,
          pomeranians: 3,
          akitas: 0,
          vizslas: 0,
          goldfish: 5,
          trees: 3,
          cars: 2,
          perfumes: 1}

input.each do |line|
  info = line.match(/(\w+): (\d+), (\w+): (\d+), (\w+): (\d+)/).captures
    if clues[info[0].to_sym] == info[1].to_i
        if clues[info[2].to_sym] == info[3].to_i
            if clues[info[4].to_sym] == info[5].to_i
              result = line.match(/(\d+):/).captures
              puts result
            end
        end
    end
end
>>>>>>> 028b25b0cc2dcace94bb9fa47bcd70c73bc1dd1a
