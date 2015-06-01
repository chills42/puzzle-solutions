# http://www.codewars.com/kata/primes-in-numbers

require "mathn"
def primeFactors(n)
  n.prime_division.map{|p,k|
    if k == 1
      "(#{p})"
    else
      "(#{p}**#{k})"
    end
  }.join
end
