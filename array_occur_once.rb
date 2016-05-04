# Given an array with only one non-repeating number, returns the unique number

def array_occur_once(a)
  i = 0
  (0...a.length).each do |j|
    i = i ^ a[j]
  end
  i
end

p array_occur_once([2,3,2,3,7,7,9,9,8,5,5])
