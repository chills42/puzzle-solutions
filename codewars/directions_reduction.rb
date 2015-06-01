# http://www.codewars.com/kata/550f22f4d758534c1100025a

def dirReduc(arr)
  pair = {'NORTH' => 'SOUTH', 'SOUTH' => 'NORTH', 'EAST' => 'WEST', 'WEST' => 'EAST'}
  index = 0
  loop do
    if index >= arr.length
      return arr
    elsif arr[index] == pair[arr[index+1]]
      arr.delete_at(index)
      arr.delete_at(index)
      index = 0
    else
      index += 1
    end
  end
end
