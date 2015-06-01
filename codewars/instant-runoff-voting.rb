# http://www.codewars.com/kata/52996b5c99fdcb5f20000004

def runoff(voters)
  threshold = voters.count/2
  loop do
    round_votes = voters.group_by {|v| v[0]}.map {|k,v| [k,v.count]}
    leader = (round_votes.max {|v| v[1]})
    return leader[0] if leader[1] > threshold
    candidates = voters.flatten.uniq
    losers = candidates.reject { |c| round_votes.map {|v| v[0]}.include?(c)}
    unless losers.any?
      least = round_votes.map {|v| v[1]}.min
      losers = round_votes.map {|v| v[0] if v[1] == least}.compact
    end
    voters.each do |voter|
      voter.reject! { |v| losers.include?(v) }
    end
    return nil if voters.flatten.count == 0
  end
end
