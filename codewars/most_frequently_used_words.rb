# http://www.codewars.com/kata/most-frequently-used-words-in-a-text

def top_3_words(text)
  words = Hash.new(0)
  text.scan(/\w+'*\w*/) do |word|
    words[word.downcase] += 1
  end
  return [] if words.length == 0 
  words.sort_by { |_k, v| v }.reverse.take(3).map { |i| i.first}
end
