# http://www.codewars.com/kata/54ce9497975ca65e1a0008c6

def convertTemp(temp, fs, ts)
    Converter.build(ts).to(Converter.build(fs).from(temp)).round
end

module Converter
  def self.build(type)
    case type
    when 'C' then CelsiusConverter.new
    when 'F' then FahrenheitConverter.new
    when 'K' then KelvinConverter.new
    when 'R' then RakineConverter.new
    when 'De' then DelisleConverter.new
    when 'N' then NewtonConverter.new
    when 'Re' then ReaumurConverter.new
    when 'Ro' then RomerConverter.new
    end
  end
end

class CelsiusConverter
  def from(v)
    v
  end
  def to(v)
    v
  end
end

class KelvinConverter
  def from(v)
    v - 273.15
  end
  def to(v)
    v + 273.15
  end
end

class DelisleConverter
  def from(v)
    100 - v * (2.0 / 3.0)
  end
  def to(v)
    (100 - v) * 1.5
  end
end

class ReaumurConverter
  def from(v)
    v * (5.0 / 4.0)
  end
  def to(v)
    v * (4.0 / 5.0)
  end
end

class FahrenheitConverter
  def from(v)
    (v - 32) * (5.0 / 9.0)
  end
  def to(v)
    v * (9.0 / 5.0) + 32
  end
end

class NewtonConverter
  def from(v)
    v * 3.04
  end
  def to(v)
    v / 3.04
  end
end

class RomerConverter
  def from(v)
    (v - 7.5) * (40.0 / 21.0)
  end
  def to(v)
    v * (21.0 / 40.0) + 7.5
  end
end

class RakineConverter
  def from(v)
    (v - 491.67) * (5.0 / 9.0)
  end
  def to(v)
    v * (9.0 / 5.0) + 491.67
  end
end
