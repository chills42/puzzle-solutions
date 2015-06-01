# http://www.codewars.com/kata/521c2db8ddc89b9b7a0000c1

def snail(array)
  snail_path = []
  while array.count > 0 do
    snail_path << array.shift
    array = array.transpose
    array.reverse!
  end
  return snail_path.flatten
end
