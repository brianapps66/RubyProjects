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

def matches(a,b,name)
  if name == "cats" || name == "trees"
    return true if a < b
  elsif name == "pomeranians" || name == "goldfish"
    return true if a > b
  elsif a == b
    return true
  else
    return false
  end
end

input.each do |line|
  info = line.match(/(\w+): (\d+), (\w+): (\d+), (\w+): (\d+)/).captures
  if matches(clues[info[0].to_sym], info[1].to_i, info[0])
    if matches(clues[info[2].to_sym], info[3].to_i, info[2])
      if matches(clues[info[4].to_sym], info[5].to_i, info[4])
        result = line.match(/(\d+):/).captures
        puts result
        if result[0].to_i > 20
          break
        end
      end
    end
  end
end
