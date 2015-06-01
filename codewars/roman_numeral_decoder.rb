# http://www.codewars.com/kata/roman-numerals-decoder

KEYS = {
  'M' => 1000,
  'D' => 500,
  'C' => 100,
  'L' => 50,
  'X' => 10,
  'V' => 5,
  'I' => 1
}

def solution(roman)
  # complete the solution by transforming the 
  # string roman numeral into an integer
  nums = roman.chars.map {|x| KEYS[x] }
  nums.each_with_index.map do |x, i|
    case
    when nums[i+1].nil? then x
    when x < nums[i+1] then x*-1
    else x
    end
  end.reduce(:+)
end
