# http://www.codewars.com/kata/53c93982689f84e321000d62

require 'prime'

def getAllPrimeFactors(n)
  sorted_factors(n).flat_map do |a|
    [a[0]] * a[1]
  end
end

def getUniquePrimeFactorsWithCount(n)
  sorted_factors(n).each_with_object([[],[]]) do |e,a|
    a[0] << e[0]
    a[1] << e[1]
  end
end

def getUniquePrimeFactorsWithProducts(n)
  sorted_factors(n).map { |a| a.reduce(&:**) }
end

def sorted_factors(n)
  return [] if n.class != Fixnum || n < 1
  return [[1,1]] if n == 1
  Prime.prime_division(n).sort
end
