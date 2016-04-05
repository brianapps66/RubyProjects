input = File.open('input13','r')

guests = []
$hash = Hash.new
input.each do |line|
  regex = line.match(/^\w+/).to_a
  if not $hash.has_key?(*regex)
    $hash[*regex] = Hash.new
    if not guests.include? *regex
      guests.push(*regex)
    end
  end
    
  value = line.match(/\d+/)[0].to_i
  if line.match(/lose/)
    value = -value
  end
  neighbour = line.match(/(\S+)[\.]$/).captures[0]
  $hash[*regex][neighbour] = value.to_i
end

def add_extra_person()
  $hash["Me"] = Hash.new
  $hash.each do |x,y|
    $hash[x]["Me"] = 0
    $hash["Me"][x] = 0
  end
end

def total_happiness(guest_order)
  total = 0
  guest_order.each_with_index do |x,index|
    left_index = index == 0 ? guest_order.length-1 : index-1
    right_index = index == guest_order.length-1 ? 0 : index+1
    guest_left = guest_order[left_index]
    guest_right = guest_order[right_index]
    left_score = $hash[x][guest_left]
    right_score = $hash[x][guest_right]
    total += left_score + right_score
  end
  return total
end

add_extra_person()
guests << "Me"
max = nil
max_score = 0

guests.permutation.each do |x|
  total = 0
  total = total_happiness(x)
  if total > max_score
    max_score = total
    max = x
  end
end

puts max_score
